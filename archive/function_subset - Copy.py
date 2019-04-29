import csv
from csv import reader
import os
import pandas as pd
import glob
from sql_functions_postgresql import *
class function_subset:

    def __init__(self,entity_type=None,object_type=None,func_subset_id=None,counters_list=None,header_of_pm_file=None):
        self.entity_type=entity_type
        self.object_type=object_type
        self.func_subset_id=func_subset_id
        self.timestamp_column='Result Time'
        self.granularity_column='Granularity Period'
        self.object_name_column='Object Name'
        self.not_counters_columns=['Result Time','Object Name','Reliability','Granularity Period']
        self.main_df=None
        #self.pivoted_counter_mapping_df = pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv', encoding='latin1',engine='python')
        self.parameters = pd.read_csv('Parameters.csv', encoding='latin1')
        self.rows_to_skip=  int(self.parameters['skipping rows'].iloc[0])
        self.is_transformed=False
        if entity_type is not None and object_type is not None and func_subset_id is not None:
            self.function_subset_name=self.get_func_subset_name()
            self.counters_list=list(reader([counters_list]))[0]
            self.regex_expression=self.get_regex_expression(self.entity_type, self.object_type)
            self.new_dimensions=self.get_new_dimensions(self.entity_type, self.object_type)
            #self.main_df.name = self.func_subset_id
            self.name=self.entity_type+"@"+self.object_type+"@"+self.function_subset_name
            self.header_of_pm_file=header_of_pm_file

    ################################################
    def check_validity(self):
        counter_mapping_df = pd.read_csv("Counters mapping.csv", encoding='latin1')
        tempo_row = counter_mapping_df[
            (counter_mapping_df['FunctionSubSet_id'] == self.func_subset_id) & (counter_mapping_df['Entity_Type_SQL'] == self.entity_type) & (counter_mapping_df['Object_Type_SQL'] == self.object_type)]
        if tempo_row.empty:
            raise "function_subset_id:"+self.func_subset_id+" doesnot exist in counter mapping library"
            return False
        return True
    ################################################
    def initialize_using_pm_file(self,pm_package_full_path):

        if not os.path.isfile(pm_package_full_path) \
        or not os.path.exists(pm_package_full_path) \
        or not os.path.splitext(pm_package_full_path)[1]==".csv":
            raise "not valid pm package used as input"
        with open(pm_package_full_path) as f:
            first_line = f.readline()
        header_list = list(reader([first_line]))[0]
        if len(header_list)>4:
            header_list0=header_list[:4]
            header_list1=sorted(header_list[4:])
            firstline0=",".join(header_list0)+","
            first_line1="\""+"\",\"".join(header_list1)+"\""
            first_line=firstline0+first_line1
        self.pivoted_counter_mapping_df = pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv', encoding='latin1',engine='python')

        pivoted_counter_mapping_df_filtered=self.pivoted_counter_mapping_df[self.pivoted_counter_mapping_df['header_of_pm_file']==first_line][['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','counters_list']]
        if len(pivoted_counter_mapping_df_filtered.index)>0:  #counting the rows in the filtered dataframe
            entity_type = pivoted_counter_mapping_df_filtered['Entity_Type_SQL'].iloc[0]
            object_type = pivoted_counter_mapping_df_filtered['Object_Type_SQL'].iloc[0]
            func_subset_id = str(pivoted_counter_mapping_df_filtered['FunctionSubSet_id'].iloc[0])
            self.__init__(entity_type,object_type,func_subset_id)
            self.main_df = pd.read_csv(pm_package_full_path, encoding='latin1', skiprows=[self.rows_to_skip], dtype='object')
            self.main_df.name=self.func_subset_id
            return True
        else:
            print(first_line)
            raise "the pm file header does not have a match in the counter mapping dictionary"
        return False
    def initialize_using_multiple_pm_file(self, list_of_pm_files):
        first_pm_file=list_of_pm_files[0]
        self.initialize_using_pm_file(first_pm_file)
        for pm_file in list_of_pm_files[1:]:
            if self.is_brother_pm(pm_file):
                self.append_pm_file_to_me(pm_file)
        return True


    def import_multiple_pm_file(self, list_of_pm_files):
        self.main_df = pd.read_csv(list_of_pm_files[0], encoding='latin1', skiprows=[self.rows_to_skip],
                                   dtype='object')
        self.main_df.name = self.func_subset_id
        for pm_file in list_of_pm_files[1:]:
            self.append_pm_file_to_me(pm_file)
        return True
    ################################################
    def is_brother_pm(self,path_to_pm_file):
        if not os.path.isfile(path_to_pm_file) \
        or not os.path.exists(path_to_pm_file) \
        or not os.path.splitext(path_to_pm_file)[1]==".csv":
            raise "not valid pm package used as input"

        with open(path_to_pm_file) as f:
            first_line = f.readline()
            for line in reader([first_line]):
                header_list=line
        header_list=sorted(header_list) # the header of the file to be checked , including all the counter and the not counters column
        self_all_header=sorted(self.counters_list+self.not_counters_columns)
        if header_list==self_all_header:
            return True
        else:
            return False
    ####################################################
    def digest_my_data(self):
        try:
            self.main_df
        except NameError:
            main_df_exist = False
        else:
            main_df_exist = True
        if main_df_exist:
            self.main_df.drop_duplicates(keep='first',inplace=True)
            counters_list=self.counters_list
            self.main_df[counters_list] = self.main_df[counters_list].apply(pd.to_numeric, errors='coerce', downcast='float')
            self.main_df.loc[:, self.timestamp_column] = pd.to_datetime(self.main_df[self.timestamp_column], format='%Y-%m-%d %H:%M')
            self.main_df.loc[:, 'Date'] = pd.to_datetime(self.main_df[self.timestamp_column].dt.date, format='%Y-%m-%d')
            self.main_df.loc[:, 'Time'] = self.main_df[self.timestamp_column].dt.time
            if not self.regex_expression is None:
                for object_counter, object_name in enumerate(self.new_dimensions):
                    self.main_df.loc[:, object_name] = self.main_df[self.object_name_column].str.split(self.regex_expression).str[
                        object_counter + 1]
            self.transform_counters_names()
            self.is_transformed=True
        else:
            raise "trying to transform an object which has no main df data loaded"
            return

    ################################################
    def get_func_subset_name(self):
        counters_map_df = pd.read_csv("Counters mapping.csv", encoding='latin1')
        func_subset_name=counters_map_df[\
            (counters_map_df['Entity_Type_SQL']==self.entity_type) \
            &(counters_map_df['Object_Type_SQL'] == self.object_type) \
            & (counters_map_df['FunctionSubSet_id'] == int(self.func_subset_id)) \
            ]['FunctionSubSet Name SQL'].iloc[0]
        return func_subset_name

    ########################################################
    def get_ctr_sql_names(self):
        counters_map_df = pd.read_csv("Counters mapping.csv", encoding='latin1')
        filtered_counters_map_df=counters_map_df[\
            (counters_map_df['Entity_Type_SQL']==self.entity_type) \
            &(counters_map_df['Object_Type_SQL'] == self.object_type) \
            & (counters_map_df['FunctionSubSet_id'] == int(self.func_subset_id)) \
            ][['Counter_SQL_Name','Counter Name']]
        if not filtered_counters_map_df.empty:
            sql_counters_map_list=[]
            for row_number in range(0,len(filtered_counters_map_df)):
                sql_counters_map_list.append([str(filtered_counters_map_df['Counter Name'].iloc[row_number]), str(filtered_counters_map_df['Counter_SQL_Name'].iloc[row_number])])
            return sql_counters_map_list
        else:
            return None
    #################################################
    def transform_counters_names(self):
        counters_sql_names = self.get_ctr_sql_names()
        for item in counters_sql_names:
            self.main_df.rename(columns={item[0]: item[1]}, inplace=True)
        return
    ###############################################
    def append_pm_file_to_me(self,path_to_pm_file):
        print("importing:" + path_to_pm_file)
        df = pd.read_csv(path_to_pm_file, encoding='latin1', skiprows=[self.rows_to_skip], dtype='object', engine='python')
        if self.main_df is not None:
            self.main_df=self.main_df.append(df)
        else:
            self.main_df=df
        return True

    ####################################################
    # def export_me_to_postgresql(self,sql_host_name,tempo_db_name, sql_user, sql_password):
    #     sql_str_master_conn = sql_str_crt_conn(sql_host_name, None, sql_user, sql_password)
    #     if not chk_sql_db_exist(sql_str_master_conn, tempo_db_name):
    #         if not create_sql_db(sql_str_master_conn, tempo_db_name):
    #             print("New Temporary DB not created")
    #             return
    #         sql_str_tempo_db_conn = sql_str_crt_conn(sql_host_name, tempo_db_name, "postgres", "123456-c")
    #         insert_df_to_sql(self.main_df, self.name, tempo_db_name, sql_host_name, sql_user, sql_password)
    #     return
    ################################################
    def search_and_import_brothers_in_loc_dir_spec_dates(self, loc_dir, list_of_timestamps, granularity):
        if not os.path.isdir(loc_dir):
            raise "the given path is not path"
            return
        distinct_dates = set([timestamp[0:8] for timestamp in list_of_timestamps])
        all_files_in_loc_dir = glob.glob(loc_dir + '/**/*.csv', recursive=True)
        list_of_searched_strings = [
            "pmresult_" + str(self.func_subset_id) + "_" + str(granularity) + "_" + str(distinct_date) for distinct_date in
            distinct_dates]
        filtered_list_of_filenames = []
        for searched_string_in_file_name in list_of_searched_strings:

            filtered_list_of_filenames = filtered_list_of_filenames + list(
                filter(lambda x: searched_string_in_file_name in x, all_files_in_loc_dir))
            print(filtered_list_of_filenames)
        if not filtered_list_of_filenames is None:
            if len(filtered_list_of_filenames) == 0:
                print("pm_package:" + str(self.func_subset_id) + " not found")
        for file in filtered_list_of_filenames:
            self.append_pm_file_to_me(file)
        return
    #########################################################################
    def search_and_import_brothers_in_loc_dir(self, loc_dir, granularity):
        if not os.path.isdir(loc_dir):
            raise "the given path is not path"
            return

        all_files_in_loc_dir = glob.glob(loc_dir + '/**/*.csv', recursive=True)
        searched_string ="pmresult_" + str(self.func_subset_id) + "_" + str(granularity) + "_"
        filtered_list_of_filenames =  list(
            filter(lambda x: searched_string in x, all_files_in_loc_dir))
        if not filtered_list_of_filenames is None:
            if len(filtered_list_of_filenames) == 0:
                print("pm_package:" + str(self.func_subset_id) + " not found")
        for file in filtered_list_of_filenames:
            self.append_pm_file_to_me(file)
        if self.main_df is None:
            return False
        if len(self.main_df.index)>0:
            return True
        else:
            return False


    ################################################

    def get_counters_list(self):
        self.pivoted_counter_mapping_df = pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv', encoding='latin1',engine='python')

        pivoted_counter_mapping_df_filtered=self.pivoted_counter_mapping_df[\
            (self.pivoted_counter_mapping_df['Entity_Type_SQL']==self.entity_type) \
            &(self.pivoted_counter_mapping_df['Object_Type_SQL'] == self.object_type) \
            & (self.pivoted_counter_mapping_df['FunctionSubSet_id'] == int(self.func_subset_id)) \
            ]['counters_list']
        if len(pivoted_counter_mapping_df_filtered.index)>0:  #counting the rows in the filtered dataframe
            counter_list=pivoted_counter_mapping_df_filtered.iloc[0]
            counter_list= list(reader([counter_list]))[0]
            #print(counter_list)
            return counter_list
    ################################################
    def get_sample_counter(self):
        counter_mapping_df = pd.read_csv("Counters mapping.csv", encoding='latin1')
        tempo_row = counter_mapping_df[
            (counter_mapping_df['FunctionSubSet_id'] == self.func_subset_id) \
            & (counter_mapping_df['Entity_Type_SQL'] == self.entity_type) \
            & (counter_mapping_df['Object_Type_SQL'] == self.object_type)]
        sample_counter_name = str(tempo_row['Counter Name'].iloc[0])
        return sample_counter_name
###########################################################################
    def get_regex_expression(self,Entity_Type_SQL, Object_Type_SQL):
        Regexs = pd.read_csv('RegexList.csv')
        filtered_regex_row = Regexs[(Regexs['Entity_Type_SQL'] == Entity_Type_SQL) & (Regexs['Object_Type_SQL'] == Object_Type_SQL)]

        if not filtered_regex_row.empty:
            return str(filtered_regex_row['Regular Expression'].iloc[0])
        else:
            return None
##########################################################################
        ###############################################################
    def get_new_dimensions(self,Entity_Type_SQL, Object_Type_SQL):
        Regexs = pd.read_csv('RegexList.csv')
        filtered_regex_row = Regexs[
            (Regexs['Entity_Type_SQL'] == Entity_Type_SQL) & (Regexs['Object_Type_SQL'] == Object_Type_SQL)]

        if not filtered_regex_row.empty:
            new_dimensions = []
            for counter in range(1, 7):
                NE_object = str(filtered_regex_row['Object' + str(counter)].iloc[0])
                if NE_object != 'nan':
                    new_dimensions.append(NE_object)
            return new_dimensions
        else:
            return None