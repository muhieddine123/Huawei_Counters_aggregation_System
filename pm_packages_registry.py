import multiprocessing
import multiprocessing.process
import timeit
from datetime import datetime, timedelta
import multiprocessing
import multiprocessing.process
from sqlalchemy import *
from function_subset import *
from postgres_worker import *
from sql_functions_postgresql import *
import ntpath

class pm_packages_registry:

    def __init__(self, raw_files_directory, sql_host_name, bookkeeper_schema_name, sql_user, sql_password):
        self.raw_files_dir=raw_files_directory
        self.bookkeeper_tb_name="bookkeeper"
        self.bookkeeper_schema=bookkeeper_schema_name
        self.sql_host_name=sql_host_name
        self.sql_user=sql_user
        self.timestamp_column='Result Time'
        self.db_name="HourlyStatistics"
        self.sql_password=sql_password
        self.registry_df = pd.read_csv(os.getcwd() + "\\" + 'Raw_Files_Registry.csv', encoding='latin1')
        self.bookeeper_schema_alch_engine = create_engine(
            "postgresql+psycopg2://" + self.sql_user + ":" + self.sql_password + "@" + self.sql_host_name + ":5432/" + self.db_name)

        if not self.chk_sql_schema_exist(self.bookkeeper_schema):
            self.create_sql_schema(self.bookkeeper_schema)
        self.bookeeper_schema_alch_engine.execute("SET search_path TO " + self.bookkeeper_schema + ";")
        if not self.chk_tb_exist_in_bookkeeper_schema(self.bookkeeper_tb_name):
            sql_str_crt_bookkeep_tb = "CREATE TABLE \""+self.bookkeeper_schema+"\".\"" + self.bookkeeper_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"Entity_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"Object_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet Name SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet_id\" numeric(24) not null);"
            self.bookeeper_schema_alch_engine.execute(sql_str_crt_bookkeep_tb)
            sql_str_crt_prim_key = "ALTER TABLE \""+self.bookkeeper_schema+"\".\"" + self.bookkeeper_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"Entity_Type_SQL\" SET NOT NULL, ALTER COLUMN \"Object_Type_SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet Name SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet_id\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"Entity_Type_SQL\", \"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\");"
            self.bookeeper_schema_alch_engine.execute(sql_str_crt_prim_key)

        self.maximum_days_backword_allowed_in_registry=6
        self.pivoted_counter_mapping_df=pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv', encoding='latin-1',engine='python',dtype='object', error_bad_lines=False)
        self.pivoted_counter_mapping_df['FunctionSubSet_id'] = pd.to_numeric(self.pivoted_counter_mapping_df['FunctionSubSet_id'])

    def chk_sql_schema_exist(self,schema_name):
        sql_line_to_execute = "select schema_name from information_schema.schemata"
        q=self.bookeeper_schema_alch_engine.execute(sql_line_to_execute)
        # print(sql_line_to_execute)
        query_fetch = q.fetchall()
        list_of_schemas = [list(item)[0] for item in query_fetch]
        if schema_name in list_of_schemas:
            return True
        else:
            return False
    def chk_tb_exist_in_bookkeeper_schema(self, tb_name):

        q = self.bookeeper_schema_alch_engine.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.bookkeeper_schema + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        if tb_name in list_of_tables:
            return True
        else:
            return False
    def create_sql_schema(self,schema_name):
        self.bookeeper_schema_alch_engine.execute("CREATE SCHEMA \"" + schema_name + "\"")
        return True
    # def get_file_identification_series(self,pm_package_full_path):
    #     # if not os.path.isfile(pm_package_full_path) \
    #     #         or not os.path.exists(pm_package_full_path) \
    #     #         or not os.path.splitext(pm_package_full_path)[1] == ".csv":
    #     #     print("not valid pm package used as input:" + pm_package_full_path)
    #     #     return None
    #     with open(pm_package_full_path) as f:
    #         first_line = f.readline()
    #         f.readline()
    #         third_line=f.readline()
    #     header_list = list(reader([first_line]))[0]
    #     list_of_third_line= list(reader([third_line]))[0]
    #     timestamp_str=list_of_third_line[0]
    #     granularity=int(list_of_third_line[1])
    #     datetime_object = datetime.strptime(timestamp_str, '%Y-%m-%d %H:%M')
    #     object_name_sample = list_of_third_line[2]
    #     if not all(elem in header_list  for elem in
    #                ['Result Time', 'Object Name', 'Reliability', 'Granularity Period']):
    #         print("not valid pm package used as input:" + pm_package_full_path)
    #         return None
    #     for column in ['Result Time', 'Object Name', 'Reliability', 'Granularity Period']:
    #         header_list.remove(column)
    #     header_list = sorted(header_list)
    #     header_list="@#".join(header_list)
    #     #self.pivoted_counter_mapping_df['counters_list'] = self.pivoted_counter_mapping_df['counters_list'].apply(set)
    #     pivoted_counter_mapping_df = \
    #     self.pivoted_counter_mapping_df[self.pivoted_counter_mapping_df['counters_list'] == header_list][
    #         ['Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet_id','FunctionSubSet Name SQL', 'counters_list']]
    #     if len(pivoted_counter_mapping_df.index) > 0:  # counting the rows in the filtered dataframe
    #         entity_type = pivoted_counter_mapping_df['Entity_Type_SQL'].iloc[0]
    #         object_type = pivoted_counter_mapping_df['Object_Type_SQL'].iloc[0]
    #         func_subset_id = str(pivoted_counter_mapping_df['FunctionSubSet_id'].iloc[0])
    #         func_subset_sql_name = str(pivoted_counter_mapping_df['FunctionSubSet Name SQL'].iloc[0])
    #         row_series = pd.Series(
    #             [pm_package_full_path, entity_type, object_type, func_subset_sql_name, func_subset_id,
    #              granularity,datetime_object, "NO"],
    #             index=['File Full Path', 'Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet Name SQL',
    #                    'FunctionSubSet_id', 'Granularity', self.timestamp_column, 'Merged_to_SQL_DB'])
    #         return row_series
    #     else:
    #         return None

    # def get_fast_file_identification_series(self, pm_package_full_path):
    #
    #     with open(pm_package_full_path) as f:
    #         first_line = f.readline()
    #     header_list = list(reader([first_line]))[0]
    #     if len(header_list)<4:
    #         return None
    #     non_counters_list=header_list[:4]
    #     counters_list=sorted(header_list[4:])
    #     non_counters_str=",".join(non_counters_list)+","
    #     counters_str="\""+"\",\"".join(counters_list)+"\""
    #     first_line=non_counters_str+counters_str
    #     # self.pivoted_counter_m
    #     # apping_df['counters_list'] = self.pivoted_counter_mapping_df['counters_list'].apply(set)
    #     #print(first_line)
    #     pivoted_counter_mapping_df = \
    #         self.pivoted_counter_mapping_df[self.pivoted_counter_mapping_df['header_of_pm_file'].apply(lambda x:x in first_line)][
    #             ['Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet_id', 'FunctionSubSet Name SQL', 'counters_list']]
    #     if len(pivoted_counter_mapping_df.index) > 0:  # counting the rows in the filtered dataframe
    #         granularity = int(ntpath.basename(pm_package_full_path).split("_")[2])
    #         datetime_object = datetime.strptime(ntpath.basename(pm_package_full_path).split("_")[3],"%Y%m%d%H%M%S")
    #         entity_type = pivoted_counter_mapping_df['Entity_Type_SQL'].iloc[0]
    #         object_type = pivoted_counter_mapping_df['Object_Type_SQL'].iloc[0]
    #         func_subset_id = str(pivoted_counter_mapping_df['FunctionSubSet_id'].iloc[0])
    #         row_series = pd.Series(
    #             [pm_package_full_path, entity_type, object_type, func_subset_id,
    #              granularity, datetime_object, "NO"],
    #             index=['File Full Path', 'Entity_Type_SQL', 'Object_Type_SQL',
    #                    'FunctionSubSet_id', 'Granularity', self.timestamp_column, 'Merged_to_SQL_DB'])
    #         return row_series
    #     else:
    #         return None
    # def get_fast_file_identification_df(self, list_of_pm_full_paths):
    #     list_of_path_and_file_header=[['File Full Path', 'header_of_pm_file','Granularity',self.timestamp_column,'Merged_to_SQL_DB']]
    #     for pm_package_full_path in list_of_pm_full_paths:
    #         with open(pm_package_full_path) as f:
    #             first_line = f.readline()
    #         header_list = list(reader([first_line]))[0]
    #         if len(header_list)<4:
    #             return None
    #         non_counters_list=header_list[:4]
    #         counters_list=sorted(header_list[4:])
    #         non_counters_str=",".join(non_counters_list)+","
    #         counters_str="\""+"\",\"".join(counters_list)+"\""
    #         first_line=non_counters_str+counters_str
    #         granularity = int(ntpath.basename(pm_package_full_path).split("_")[2])
    #         datetime_object = datetime.strptime(ntpath.basename(pm_package_full_path).split("_")[3],"%Y%m%d%H%M%S")
    #         list_of_path_and_file_header.append([pm_package_full_path,first_line,granularity,datetime_object,"NO"],sort=False)
    #     df_of_path_and_file_header=pd.DataFrame(list_of_path_and_file_header).T.set_index(0).T
    #     df_of_path_and_file_header.loc[:, self.timestamp_column] = pd.to_datetime(df_of_path_and_file_header[self.timestamp_column],
    #                                                                 format='%Y-%m-%d %H:%M')
    #     df_of_path_and_file_header.drop_duplicates(keep='first', inplace=True)
    #     pivoted_counter_mapping_df = self.pivoted_counter_mapping_df.drop_duplicates(subset=['header_of_pm_file'],keep='first')
    #     df_of_path_and_file_header.set_index(['header_of_pm_file'])
    #     pivoted_counter_mapping_df.set_index(['header_of_pm_file'])
    #     merged_df=pd.merge(df_of_path_and_file_header,pivoted_counter_mapping_df,on=['header_of_pm_file'],how='inner')
    #     merged_df=merged_df[['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','Granularity','Result Time','Merged_to_SQL_DB']]
    #     return merged_df
    def get_fast_file_identification_df2(self, list_of_pm_full_paths):
        list_of_path_sample_counter_and_func_id=[['File Full Path','FunctionSubSet_id', 'sample_counter_name','Granularity',self.timestamp_column,'Merged_to_SQL_DB','Entity_Type_SQL','Object_Type_SQL']]
        for pm_package_full_path in list_of_pm_full_paths:
            with open(pm_package_full_path) as f:
                first_line = f.readline()
            header_list = list(reader([first_line]))[0]
            sample_counter_name=header_list[4]
            FunctionSubSet_id = ntpath.basename(pm_package_full_path).split("_")[1]
            granularity = int(ntpath.basename(pm_package_full_path).split("_")[2])
            datetime_object = datetime.strptime(ntpath.basename(pm_package_full_path).split("_")[3],"%Y%m%d%H%M%S")
            list_of_path_sample_counter_and_func_id.append([pm_package_full_path,FunctionSubSet_id,sample_counter_name,granularity,datetime_object,"NO",None,None])
        df_of_path_sample_counter_and_func_id=pd.DataFrame(list_of_path_sample_counter_and_func_id).T.set_index(0).T
        df_of_path_sample_counter_and_func_id.loc[:, self.timestamp_column] = pd.to_datetime(df_of_path_sample_counter_and_func_id[self.timestamp_column],
                                                                    format='%Y-%m-%d %H:%M')
        df_of_path_sample_counter_and_func_id['FunctionSubSet_id'] = pd.to_numeric(df_of_path_sample_counter_and_func_id['FunctionSubSet_id'])
        df_of_path_sample_counter_and_func_id.drop_duplicates(keep='first', inplace=True)
        pivoted_counter_mapping_df = self.pivoted_counter_mapping_df.drop_duplicates(subset=['counters_list'],keep='first')
        #returned_final_df=df_of_path_sample_counter_and_func_id.empty
        for index, row in df_of_path_sample_counter_and_func_id.iterrows():
            filtered_pivoted_df=pivoted_counter_mapping_df[(pivoted_counter_mapping_df['FunctionSubSet_id'].apply(lambda x:str(x)==str(row['FunctionSubSet_id']))) & (pivoted_counter_mapping_df['counters_list'].apply(lambda x: row['sample_counter_name'] in x)) ][['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id']]
            if len(filtered_pivoted_df)>0:
                df_of_path_sample_counter_and_func_id['Entity_Type_SQL'].loc[index,]=filtered_pivoted_df['Entity_Type_SQL'].iloc[0]
                df_of_path_sample_counter_and_func_id['Object_Type_SQL'].loc[index,]=filtered_pivoted_df['Object_Type_SQL'].iloc[0]
                #df_of_path_sample_counter_and_func_id=df_of_path_sample_counter_and_func_id[['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','Granularity','Result Time','Merged_to_SQL_DB']]
        df_of_path_sample_counter_and_func_id.dropna(subset = ['Object_Type_SQL'],inplace=True)
        return df_of_path_sample_counter_and_func_id

    def update_pm_registry(self):
        all_files_in_loc_dir = glob.glob(self.raw_files_dir + '/**/*.csv', recursive=True)
        all_files_paths_df=pd.DataFrame({'File Full Path':all_files_in_loc_dir})
        all_files_paths_df['file_name']=all_files_paths_df['File Full Path'].str.rsplit('\\',1).str[1]
        all_files_paths_df['final_part_of_name'] = all_files_paths_df['file_name'].str.split('_', 4).str[4]
        all_files_paths_df=all_files_paths_df[all_files_paths_df['final_part_of_name'].apply(lambda x:'_' not in x)][['File Full Path','file_name']]
        all_files_paths_df=all_files_paths_df[all_files_paths_df['file_name'].str.contains('^pmresult_')]
        all_files_paths_df['FunctionSubSet_id']=all_files_paths_df['file_name'].str.split('_',4).str[1]
        all_files_paths_df['Granularity']=all_files_paths_df['file_name'].str.split('_',4).str[2]

        all_files_paths_df[self.timestamp_column]=all_files_paths_df['file_name'].str.split('_',4).str[3]
        all_files_paths_df.loc[:, self.timestamp_column] = pd.to_datetime(all_files_paths_df[self.timestamp_column],
                                                                    format='%Y%m%d%H%M%S')
        year, month, day, hour, minute = time.strftime("%Y,%m,%d,%H,%M").split(',')
        first_day_fetched=datetime(int(year), int(month), int(day))-timedelta(self.maximum_days_backword_allowed_in_registry)
        all_files_paths_df=all_files_paths_df[all_files_paths_df[self.timestamp_column]>first_day_fetched][list(all_files_paths_df.columns.values)]
        to_be_imported_function_subsets_df=self.pivoted_counter_mapping_df[self.pivoted_counter_mapping_df['Import']=='YES'][['FunctionSubSet_id','Import']]
        to_be_imported_function_subsets_df['FunctionSubSet_id'] = pd.to_numeric(to_be_imported_function_subsets_df['FunctionSubSet_id'])
        to_be_imported_function_subsets_df=to_be_imported_function_subsets_df.drop_duplicates(['FunctionSubSet_id'],keep='first')
        all_files_paths_df['FunctionSubSet_id']=pd.to_numeric(all_files_paths_df['FunctionSubSet_id'])
        #setting indiced
        self.pivoted_counter_mapping_df.set_index(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id'])
        all_files_paths_df=pd.merge(all_files_paths_df,to_be_imported_function_subsets_df,left_on='FunctionSubSet_id',right_on='FunctionSubSet_id',how='inner')
        all_files_in_loc_dir = all_files_paths_df['File Full Path'].tolist()
        in_registry_file_pathes = self.registry_df['File Full Path'].tolist()
        unidentified_registered_df=pd.read_csv(os.getcwd() + "\\" + 'Unidentified_Raw_Files_Registry.csv', sep=',')
        unidentified_registered_list=unidentified_registered_df['File Full Path'].tolist()
        registered_identified_and_unidentified_list=in_registry_file_pathes+unidentified_registered_list
        new_files_list = np.setdiff1d(all_files_in_loc_dir, registered_identified_and_unidentified_list)
        new_registry_entries_df=self.get_fast_file_identification_df2(new_files_list)
        unidentified_pm_registry_df=new_registry_entries_df[new_registry_entries_df.Entity_Type_SQL.isnull()  ][['File Full Path',self.timestamp_column]]   #) or () or (new_registry_entries_df.FunctionSubSet_id.isnull())
        identified_pm_registry_df = new_registry_entries_df[new_registry_entries_df.Entity_Type_SQL.notnull()][   ['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id', 'Granularity', self.timestamp_column,'Merged_to_SQL_DB']]
        unidentified_pm_registry_df.to_csv(os.getcwd() + "\\" + 'Unidentified_Raw_Files_Registry.csv', sep=',', mode='a', index=False)
        # for pm_package_full_path in new_files_list:
        #     #timeit.timeit('self.get_file_identification_series()')
        #     pm_identification_row_series=self.get_fast_file_identification_series(pm_package_full_path)
        #     new_registry_entries_df = new_registry_entries_df.append(pm_identification_row_series, ignore_index=True)
        self.registry_df=pd.concat([self.registry_df, identified_pm_registry_df]).drop_duplicates(keep='first')
        self.registry_df.reset_index(drop=True)
        self.registry_df = self.registry_df.dropna(subset = ['FunctionSubSet_id'])  # remove nan records from df
        self.update_sql_importing_status()
        self.registry_df.sort_values(by=[self.timestamp_column], inplace=True, ascending=False)
        self.registry_df.to_csv(os.getcwd()+"\\"+'Raw_Files_Registry.csv', sep=',', index=False)

        return True



    def get_pms_not_added_to_sql(self):
        return self.registry_df[self.registry_df['Merged_to_SQL_DB']=='NO'][['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','Granularity','Result Time']]
    def update_sql_importing_status(self):
        already_imported_pms_df=self.query_imported_pm_packages_from_bookkeeper("bookkeeper")
        already_imported_pms_df['Merged_to_SQL_DB']="YES"
        self.registry_df.set_index(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id',self.timestamp_column])
        already_imported_pms_df.set_index(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id',self.timestamp_column])
        self.registry_df['Merged_to_SQL_DB_old']=self.registry_df['Merged_to_SQL_DB']
        del self.registry_df['Merged_to_SQL_DB']
        #self.registry_df.rename(columns={'Merged_to_SQL_DB': 'Merged_to_SQL_DB_old'}, inplace=True)
        already_imported_pms_df['FunctionSubSet_id']=pd.to_numeric(already_imported_pms_df['FunctionSubSet_id'])
        if self.registry_df.shape[0]==0:
            return None
        self.registry_df['FunctionSubSet_id']=pd.to_numeric(self.registry_df['FunctionSubSet_id'])
        self.registry_df.loc[:, self.timestamp_column] = pd.to_datetime(self.registry_df[self.timestamp_column],
                                                                    format='%Y-%m-%d %H:%M')
        already_imported_pms_df.loc[:, self.timestamp_column] = pd.to_datetime(already_imported_pms_df[self.timestamp_column],
                                                                    format='%Y-%m-%d %H:%M')
        registry_df_merged=pd.merge(self.registry_df,already_imported_pms_df,on=['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id',self.timestamp_column],how='left')
        registry_df_merged['Merged_to_SQL_DB'].fillna("NO",inplace=True)
        registry_df_merged.drop(['Merged_to_SQL_DB_old'], axis=1,inplace=True)
        self.registry_df = registry_df_merged
        return True
    def get_processed_df_for_pms_not_added_to_sql(self):
        filtered_registry_df=self.registry_df[self.registry_df['Merged_to_SQL_DB']=='NO'][['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','Granularity','Result Time']]
        filtered_registry_df = filtered_registry_df.groupby(['Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet_id', 'Granularity'], as_index=False)['File Full Path'].apply(set)
        filtered_registry_df.to_csv(os.getcwd() + "\\" + 'grouped_unimported_registry_entries.csv', encoding='latin1')
        filtered_registry_df = filtered_registry_df.reset_index()
        if filtered_registry_df.shape[0]==0:
            return None
        filtered_registry_df.columns = ['Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet_id', 'Granularity',
                                              'set_of_pm_paths']
        self.pivoted_counter_mapping_df['FunctionSubSet_id']=self.pivoted_counter_mapping_df['FunctionSubSet_id'].astype(int)
        self.pivoted_counter_mapping_df['FunctionSubSet_id']=pd.to_numeric(self.pivoted_counter_mapping_df['FunctionSubSet_id'])
        filtered_registry_df['FunctionSubSet_id']=filtered_registry_df['FunctionSubSet_id'].astype(int)
        filtered_registry_df['FunctionSubSet_id']=pd.to_numeric(filtered_registry_df['FunctionSubSet_id'])
        filtered_registry_df.set_index(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id'])
        self.pivoted_counter_mapping_df.set_index(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id'])
        filtered_registry_df=pd.merge(filtered_registry_df,self.pivoted_counter_mapping_df,on=['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id'],how='inner')
        filtered_registry_df
        return filtered_registry_df
    def get_list_of_my_tb_names(self):
        q = self.bookeeper_schema_alch_engine.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.bookkeeper_schema + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        return list_of_tables
    def query_imported_pm_packages_from_bookkeeper(self,bookkeeper_tb_name):
        sql_str_query_imported_pm="SELECT " + self.bookkeeper_schema + ".\"" + bookkeeper_tb_name + "\".\"Entity_Type_SQL" + """\", 
         """ + self.bookkeeper_schema + ".\"" + bookkeeper_tb_name + "\".\"Object_Type_SQL" + """\", 
         """ + self.bookkeeper_schema + ".\"" + bookkeeper_tb_name + "\".\"FunctionSubSet_id\""+""",
        """+ self.bookkeeper_schema + ".\"" + bookkeeper_tb_name + "\".\"" + self.timestamp_column + """\" 
        FROM """+ self.bookkeeper_schema + ".\"" + bookkeeper_tb_name + "\""
        df=pd.read_sql_query(sql_str_query_imported_pm,self.bookeeper_schema_alch_engine,coerce_float=True,parse_dates=['Result Time'])
        return df

    def archive_old_files_in_registry(self):
        registry_df = pd.read_csv(os.getcwd() + "\\" + 'Raw_Files_Registry.csv', encoding='latin1')
        year, month, day, hour, minute = time.strftime("%Y,%m,%d,%H,%M").split(',')
        registry_df_new=registry_df[registry_df[self.timestamp_column]>=datetime(int(year), int(month), int(day))-datetime.timedelta(days=self.maximum_days_backword_allowed_in_registry)]
        year, month, day, hour, minute = time.strftime("%Y,%m,%d,%H,%M").split(',')
        registry_df_archived= registry_df[registry_df[self.timestamp_column] < datetime.datetime(year, month, day)- datetime.timedelta(
            days=self.maximum_days_backword_allowed_in_registry)]

        registry_df_new.to_csv('Raw_Files_Registry.csv', sep=',', index=False)
        registry_df_archived.to_csv('Archived_Raw_Files_Registry.csv',mode='a', sep=',', index=False)
        return True





