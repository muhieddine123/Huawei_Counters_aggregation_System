import multiprocessing
from multiprocessing import Pool
import multiprocessing.process
from datetime import datetime
from pm_packages_registry import *
from sqlalchemy import *
from launch_process import *
from function_subset import *
from postgres_worker_v2 import *



def pivot_counter_mapping_table():
    counter_mapping_df = pd.read_csv("Counters mapping.csv", encoding='latin1')
    counter_mapping_df=counter_mapping_df[counter_mapping_df['Import']=='YES'][['Entity_Type_SQL','Object_Type_SQL','Counter_SQL_Name','neTypeName','Object Name','Counter ID','Counter Name',' Counter Unit','Formula','Counter Description','FunctionSubSet_id','FunctionSubSet Name SQL','FunctionSubSet Name','functionsetid','FunctionSet Name','neTypeId','Import','Import Rank'
]]
    counter_mapping_df.sort_values(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','Counter Name'],ascending=[True,True,True,True],inplace=True)
    counter_mapping_df['Counter Name']=counter_mapping_df['Counter Name'].apply(lambda x:"\""+x+"\"")
    grouped_df=counter_mapping_df.groupby(['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','FunctionSubSet Name SQL','Import','Import Rank'],as_index=False)['Counter Name'].apply(lambda x:",".join(x))
    grouped_df=grouped_df.reset_index()
    grouped_df.columns=['Entity_Type_SQL','Object_Type_SQL','FunctionSubSet_id','FunctionSubSet Name SQL','Import','Import Rank','counters_list']
    #grouped_df['counters_list']=grouped_df['counters_list'].apply(lambda x:"\""+x+"\"")
    #grouped_df['header_of_pm_file']=grouped_df['counters_list'].apply(lambda x:"Result Time,Granularity Period,Object Name,Reliability,"+x)
    #grouped_df['counters_list']=grouped_df['counters_list'].apply(lambda x:"\""+x+"\"")
    #grouped_df['counters_list']=grouped_df['counters_list'].apply(sorted)
    #grouped_df['counters_list']=grouped_df['counters_list'].apply(list)
    grouped_df.to_csv(os.getcwd()+"\\"+'pivoted_counter_mapping.csv',sep=',', encoding='latin-1',index=False)
    return grouped_df
def chunks(l, n):
    """Yield successive n-sized chunks from l."""
    for i in range(0, len(l), n):
        yield l[i:i + n]

def launch_the_process(list_of_parallel_func_arguments):
     if list_of_parallel_func_arguments is None:
         return
     # with Pool(processes=10) as pool:
     #     result_list=[pool.apply(oop_launch_one_process_one_pm, args_item) for args_item in list_of_parallel_func_arguments]
     #     for result in result_list:
     #         result.get()
     processes_items_list = []
     number_of_parallel_processes=40
     step_size=min(number_of_parallel_processes,len(list_of_parallel_func_arguments))
     # chunck=[]
     # list_of_chuncks=[]
     # counter = 0
     #
     # for item in list_of_parallel_func_arguments:
     #     chunck.append(item)
     #     counter=counter+1
     #     if counter>number_of_parallel_processes:
     #         list_of_chuncks.append(chunck)
     #         chunck=[]
     #         counter=0
     # if len(list_of_parallel_func_arguments)<=number_of_parallel_processes:
     #     list_of_chuncks=[chunck]

     for i in range(0,number_of_parallel_processes):
         #print("calling one parallel multiple serial process with step:"+str(step_size)+" from:"+str(i)+" to :"+str(i+step_size))
         if len(list_of_parallel_func_arguments)>0:
             args_set=list_of_parallel_func_arguments[i::step_size]
             # P2.apply_async(oop_one_process_multiple_serial_pm_packages, args=(args_set,))
             process_item = multiprocessing.Process(target=oop_one_process_multiple_serial_pm_packages, args=(args_set,))
             processes_items_list.append(process_item)
             process_item.start()
             print("staaaaaaarting new process"+str(i))

     for process_item in processes_items_list:
         process_item.join()
         print("joining process back to the pool")
     return

def initial_launch():
    ts = time.time()
    st = datetime.fromtimestamp(ts).strftime('%Y%m%d%H%M%S')
    raw_files_dir = "C:\\Hourly_PM_Files"
    sql_user = "postgres"
    sql_password = "123456-c"
    sql_host_name = "localhost"
    bookkeeper_schema_name = "bookkeeper"

    # pivoted_counter_mapping_df = pivot_counter_mapping_table()
    pivoted_counter_mapping_df = pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv', encoding='latin-1',
                                             engine='python', dtype='object', error_bad_lines=False)
    pivoted_counter_mapping_df['FunctionSubSet_id'] = pd.to_numeric(
        pivoted_counter_mapping_df['FunctionSubSet_id'])

    # update_the_registry(raw_files_dir)
    # with open('pivoted_counter_mapping.pickle','rb') as f:
    # pivoted_counter_mapping_df = pickle.load(f)
    pivoted_counter_mapping_df = pivoted_counter_mapping_df.sort_values('Import Rank')
    pm_registry_worker1 = pm_packages_registry(raw_files_dir, sql_host_name, bookkeeper_schema_name, sql_user,
                                               sql_password)
    print("begin updating registry")
    pm_registry_worker1.update_pm_registry()
    print("finish updating registry")
    # to_be_added_pms_registry_df=pm_registry_worker1.get_pms_not_added_to_sql()
    grouped_per_pm_registry_df = pm_registry_worker1.get_processed_df_for_pms_not_added_to_sql()
    if grouped_per_pm_registry_df is None:
        print("no new files should be added to sql database")
        return
    else:
        grouped_per_pm_registry_df.to_csv(os.getcwd() + "\\" + 'to_be_imported_packages.csv',encoding='latin1')


    list_of_parallel_func_arguments = []
    for index, row in grouped_per_pm_registry_df.iterrows():
        # print("total number of packages "+str(len(grouped_per_pm_registry_df)))
        list_of_PM_paths = list(sorted(row['set_of_pm_paths']))
        #shortened_list_of_PM_paths=list_of_PM_paths[0:min(maximum_number_of_processed_PMs_per_process, len(list_of_PM_paths))]
        if len(list_of_PM_paths) > 0:
            set_of_arguments = (
                row['Entity_Type_SQL'], row['Object_Type_SQL'], row['FunctionSubSet_id'],
                list_of_PM_paths,
                row['counters_list'], sql_host_name,
                sql_user, sql_password)
            list_of_parallel_func_arguments.append(set_of_arguments)

    return list_of_parallel_func_arguments
if __name__ == '__main__':
    for i in range(0,5000):
        list_of_parallel_func_arguments=initial_launch()
        launch_the_process(list_of_parallel_func_arguments)
        time.sleep(1000)






    # def import_pm_func_subset_to_df(func_subset_id, granularity, loc_dir, list_of_timestamps,sample_counter):
#     parameters = pd.read_csv('Parameters.csv')
#     Rows_to_Skip = int(parameters['skipping rows'].iloc[0])
#     if not os.path.exists(loc_dir):
#         print("local directory:"+loc_dir+" is not found")
#         return
#     distinct_dates= set([timestamp[0:8] for timestamp in list_of_timestamps])
#     all_files_in_loc_dir = glob.glob(loc_dir + '/**/*.csv', recursive=True)
#     list_of_searched_strings=["pmresult_"+str(func_subset_id)+"_"+str(granularity)+"_"+str(distinct_date) for distinct_date in distinct_dates]
#     filtered_list_of_filenames=[]
#     for searched_string_in_file_name in list_of_searched_strings:
#         #print(list(filter(lambda x: searched_string_in_file_name in x, all_files_in_loc_dir)))
#         filtered_list_of_filenames=filtered_list_of_filenames+list(filter(lambda x: searched_string_in_file_name in x, all_files_in_loc_dir))
#         print(filtered_list_of_filenames)
#     pm_df_list=[]
#     if not filtered_list_of_filenames is None:
#         if len(filtered_list_of_filenames)==0:
#             print("pm_package:"+str(func_subset_id)+" not found")
#
#     #print(filtered_list_of_filenames)
#     #sub_dirs=next(os.walk(loc_dir))[1]
#     #if len(sub_dirs)<1:
#     #   print("date subdirectories doesnot exist in main local directory")
#     #   return
#     #filtered_sub_dir=[]
#
#     #[filtered_sub_dir.append(sub_dir) for date in distinct_dates for sub_dir in sub_dirs if date in sub_dir]
#     #if len(filtered_sub_dir)==0:
#      #   return
#     #for sub_dir in filtered_sub_dir:
#     #    sub_dir_full_path=loc_dir+"\\"+sub_dir
#     #    for filename in os.listdir(sub_dir_full_path):
#      #       for timestamp in list_of_timestamps:
#     #            if str(func_subset_id)+"_"+str(granularity)+"_"+timestamp in filename:
#     pm_df=pd.DataFrame([])
#     for file in filtered_list_of_filenames:
#         with open(file) as f:
#             first_line = f.readline()
#         if sample_counter in first_line:
#             print("importing:"+file)
#             df = pd.read_csv(file, encoding='latin1', skiprows=[Rows_to_Skip], dtype='object')
#             df.name=func_subset_id
#             pm_df=pm_df.append(df)
#     return pm_df
# def import_csv_2(files_path):
#     parameters = pd.read_csv('Parameters.csv')
#     Rows_to_Skip = int(parameters['skipping rows'].iloc[0])
#     headers_dic={}
#     for filename in glob.glob(files_path+"\*.csv"):
#         with open(filename) as f:
#             first_line = f.readline()
#
#         headers_dic[filename]=first_line
#     unique_headers=set(headers_dic.values())
#     big_dictionary={}
#     for header in list(unique_headers):
#         np_array=[]
#         filter_result=list(filter(lambda x: headers_dic[x] == header, headers_dic))
#         for filename in filter_result:
#             df=pd.read_csv(filename,encoding='latin1',skiprows=[Rows_to_Skip],dtype='object')
#             np_array.append(df.values)
#         combined_np_array=np.vstack(np_array)
#         big_df=pd.DataFrame(combined_np_array)
#         big_df.columns=df.columns
#         big_dictionary[filter_result[0]]=big_df
#     return big_dictionary
#     #return big_dictionary
#
#
#     new_appendable_files_list=[]
#     #matching_header=headers_dictionary[key]
#     #for key2 in headers_dictionary:
#     #    if headers_dictionary[key2]==matching_header:
#     #        new_appendable_files_list.append(key2)
#      #       del headers_dictionary[key2]
#    # appendable_files_list_of_lists.append(new_appendable_files_list)
#
#     # #filename=os.path.basename(original_list[0])
#     # Grouped_list[filename]=pd.read_csv(original_list[0],encoding='latin1',skiprows=[Rows_to_Skip],dtype='object')
#     # for original_file in original_list[1:2]:
#     #     df_appended=False
#     #     filename = os.path.basename(original_file)
#     #     #print(original_file)
#     #     original_df=pd.read_csv(original_file,encoding='latin1',skiprows=[Rows_to_Skip],dtype='object')
#     #     for key in Grouped_list:
#     #         if Grouped_list[key].columns.values.tolist()==original_df.columns.values.tolist():
#     #             Grouped_list[key]=Grouped_list[key].append(original_df)
#     #             df_appended=True
#     #
#     #             break
#     #     if not df_appended:
#     #         Grouped_list[filename]=original_df
#     # return Grouped_list

# def import_csv(files_path):
#     parameters = pd.read_csv('Parameters.csv')
#     Rows_to_Skip = int(parameters['skipping rows'].iloc[0])
#     original_list=glob.glob(files_path+"\*.csv")
#     Grouped_list={}
#     filename=os.path.basename(original_list[0])
#     Grouped_list[filename]=pd.read_csv(original_list[0],encoding='latin1',skiprows=[Rows_to_Skip],dtype='object')
#     for original_file in original_list[1:2]:
#         df_appended=False
#         filename = os.path.basename(original_file)
#         #print(original_file)
#         original_df=pd.read_csv(original_file,encoding='latin1',skiprows=[Rows_to_Skip],dtype='object')
#         for key in Grouped_list:
#             if Grouped_list[key].columns.values.tolist()==original_df.columns.values.tolist():
#                 Grouped_list[key]=Grouped_list[key].append(original_df)
#                 df_appended=True
#
#                 break
#         if not df_appended:
#             Grouped_list[filename]=original_df
#     return Grouped_list
#
# def get_func_subset(counter_name):
#     SQL_Mapping=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     tempo_row = SQL_Mapping[SQL_Mapping['Counter Name'] == counter_name]
#     if not tempo_row.empty:
#         function_subset_name = str(tempo_row['FunctionSubSet Name SQL'].iloc[0])
#         return function_subset_name
#     else:
#         return "unclassified_counters"
#
# def get_ne_type(counter_name):
#     SQL_Mapping=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     tempo_row = SQL_Mapping[SQL_Mapping['Counter Name'] == counter_name]
#     if not tempo_row.empty:
#         Object_Name = str(tempo_row['Object_Type_SQL'].iloc[0])
#         return Object_Name
#     else:
#         return "unclassified_counters"
#
# def get_sample_counter_from_func_subset(func_subset_id,rat_tech):
#     SQL_Mapping=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     tempo_row = SQL_Mapping[(SQL_Mapping['FunctionSubSet_id'] == func_subset_id) & (SQL_Mapping['Entity_Type_SQL'] == rat_tech)  ]
#     if not tempo_row.empty:
#         counter_name = str(tempo_row['Counter Name'].iloc[0])
#         return counter_name
#     else:
#         return "unclassified_counters"

# def get_ctr_sql_name(counter_name):
#     SQL_Mapping=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     tempo_row = SQL_Mapping[SQL_Mapping['Counter Name'] == counter_name]
#     if not tempo_row.empty:
#         counter_sql_name = str(tempo_row['Counter_SQL_Name'].iloc[0])
#         return counter_sql_name
#     else:
#         return counter_name
#
# def get_tb_dimensions(rat_tech,ne_type):
#
#     Regexs=pd.read_csv('RegexList.csv')
#     filtered_regex_row = Regexs[(Regexs['Entity_Type_SQL'] == rat_tech) & (Regexs['NE Object Type'] == ne_type)]
#
#     if not filtered_regex_row.empty:
#         dimensions=[]
#         for counter in range(1,6):
#             ne_object=str(filtered_regex_row['Object'+str(counter)].iloc[0])
#             if  ne_object!='nan':
#                 ne_object=ne_object.replace("1","").replace("2","")
#                 if not ne_object in dimensions:
#                     dimensions.append(ne_object)
#
#         dimensions.append('Date','Time')
#         return dimensions
#     else:
#         return null
#
# def get_rat_tech(counter_name):
#     SQL_Mapping=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     tempo_row = SQL_Mapping[SQL_Mapping['Counter Name'] == counter_name]
#     if not tempo_row.empty:
#         Object_Name = str(tempo_row['Entity_Type_SQL'].iloc[0])
#         return Object_Name
#     else:
#         return "unclassified_counters"
#
# def get_regex(rat_tech, Object_type):
#     Regexs=pd.read_csv('RegexList.csv')
#     filtered_regex_row = Regexs[(Regexs['Entity_Type_SQL'] == rat_tech) & (Regexs['NE Object Type'] == Object_type)]
#
#     if not filtered_regex_row.empty:
#         regex_expression=[]
#         regex_expression.append(str(filtered_regex_row['Regular Expression'].iloc[0]))
#         for counter in range(1,6):
#             #print(counter)
#             NE_object=str(filtered_regex_row['Object'+str(counter)].iloc[0])
#             if  NE_object!='nan':
#                 regex_expression.append(NE_object)
#         #print(regex_expression[0])
#         return regex_expression
#     else:
#         return "unclassified_Object_Type in RegexList"

# def Rearrange_Counters(input_df_Dictionary):
#     output_df_Dictionary={}
#     Parameters=pd.read_csv('Parameters.csv')
#     time_column , NE_column= str(Parameters['time_column'].iloc[0])  ,  str(Parameters['NE_column'].iloc[0])
#     Non_numeric_cols=str(Parameters['Non Numeric Columns'].iloc[0]).split(',')
#     #print(Non_numeric_cols)
#     Non_numeric_cols.append(time_column)
#     Non_numeric_cols.append( NE_column)
#    # print(Non_numeric_cols)
#     GP_column_name='Granularity Period'
#     for key in input_df_Dictionary:
#         input_df=input_df_Dictionary[key]
#         FunctionSubSets={}#loop through the data frames
#
#         numeric_cols = input_df.columns.drop(Non_numeric_cols)
#         counters_names=numeric_cols.drop(GP_column_name)
#         for counter_name in counters_names:
#             new_df_tb_name=get_rat_tech(counter_name)+"@"+get_ne_type(counter_name)+"@"+get_func_subset(counter_name)
#
#             if new_df_tb_name in FunctionSubSets:
#                 counter_list=FunctionSubSets[new_df_tb_name]
#                 counter_list.append(counter_name)
#                 FunctionSubSets[new_df_tb_name]=counter_list
#             else:
#                 FunctionSubSets[new_df_tb_name]=[counter_name]
#         #print(FunctionSubSets)
#         for new_df_tb_name  in FunctionSubSets:
#
#             counters_merged_to_output=input_df[[time_column,NE_column,GP_column_name]+FunctionSubSets[new_df_tb_name]]
#             if not new_df_tb_name in output_df_Dictionary:
#                 output_df_Dictionary[new_df_tb_name]=counters_merged_to_output
#             else:
#                 output_df_Dictionary[new_df_tb_name]=pd.merge(output_df_Dictionary[new_df_tb_name], counters_merged_to_output[[time_column, NE_column]+FunctionSubSets[new_df_tb_name]],
#                          on=[time_column, NE_column], how='left')
#
#                         #moved_col_df=res
#
#     return output_df_Dictionary
#
# def transform_files(input_df):
#     Parameters=pd.read_csv('Parameters.csv')
#     time_column=str(Parameters['time_column'].iloc[0])
#     NE_column=str(Parameters['NE_column'].iloc[0])
#     Non_numeric_cols=str(Parameters['Non Numeric Columns'].iloc[0]).split(',')
#     Non_numeric_cols.extend((NE_column,time_column))
#     input_df.drop_duplicates(subset=[time_column,NE_column],inplace=True)
#     numeric_cols = list(input_df.columns.values)
#     numeric_cols.remove(time_column)
#     numeric_cols.remove(NE_column)
#     for item in Non_numeric_cols:
#         if item in numeric_cols:
#             numeric_cols.remove(item)
#     input_df[numeric_cols] = input_df[numeric_cols].apply(pd.to_numeric, errors='coerce',downcast='float')
#     input_df.loc[:,time_column]=pd.to_datetime(input_df[time_column],format='%Y-%m-%d %H:%M')
#     input_df.loc[:,'Date']=pd.to_datetime(input_df[time_column].dt.date,format='%Y-%m-%d')
#     input_df.loc[:,'Time']=input_df[time_column].dt.time
#     #print(input_df.dtypes)
#     object_name_sample=str(input_df[NE_column].iloc[0])
#     Ne_object_type=get_ne_type(numeric_cols[-1])
#     RAT_technology=get_rat_tech(numeric_cols[-1])
#     regex_expression=get_regex(RAT_technology,Ne_object_type)
#     if not "unclassified" in regex_expression:
#         for object_counter,object_name in enumerate(regex_expression[1:]):
#             input_df.loc[:, object_name]=input_df[NE_column].str.split(regex_expression[0]).str[object_counter+1]
#     input_df=rename_counters(input_df)
#     return input_df
#
# def rename_dfs(input_df_dictionary):
#     keys=[*input_df_dictionary]
#     for key in keys:
#         input_df=input_df_dictionary[key]
#         one_sample_counter = get_one_counter_from_df(input_df_dictionary[key])
#         ne_object_type = get_ne_type(one_sample_counter)
#         rat_technology = get_rat_tech(one_sample_counter)
#         input_df_dictionary[rat_technology+"@"+ne_object_type+"@"+key] = input_df_dictionary[key]
#         del input_df_dictionary[key]
#     return input_df_dictionary
#
# def rename_df(input_df):
#     one_sample_counter = get_one_counter_from_df(input_df)
#     ne_object_type = get_ne_type(one_sample_counter)
#     rat_technology = get_rat_tech(one_sample_counter)
#     func_subset_name=get_func_subset(one_sample_counter)
#     input_df.name=rat_technology+"@"+ne_object_type+"@"+func_subset_name
#     return input_df
# #------------------------------------------------------
# def rename_counters(input_df):
#     Parameters=pd.read_csv('Parameters.csv')
#     Regexs=pd.read_csv('RegexList.csv')
#     time_column=str(Parameters['time_column'].iloc[0])
#     NE_column=str(Parameters['NE_column'].iloc[0])
#     Non_numeric_cols=str(Parameters['Non Numeric Columns'].iloc[0]).split(',')
#     Non_numeric_cols.extend((NE_column,time_column))
#     numeric_cols = list(input_df.columns.values)
#     numeric_cols.remove(time_column)
#     numeric_cols.remove(NE_column)
#     for counter_original_name in numeric_cols:
#           counter_sql_name = get_ctr_sql_name(counter_original_name)
#           input_df.rename(columns={counter_original_name: counter_sql_name}, inplace=True)
#     return input_df
# #------------------------------------------------------
# def daily_aggergate(transformed_dfs):
#     Parameters=pd.read_csv('Parameters.csv')
#     NE_column=str(Parameters['NE_column'].iloc[0])
#     time_column=str(Parameters['time_column'].iloc[0])
#     granularity_col=str(Parameters['granularity column'].iloc[0])
#     result_list=[]
#     for df_counter,transformed_df in enumerate(transformed_dfs):
#         if not transformed_df[granularity_col].iloc[0]==1440:
#             numeric_cols=list(transformed_df.select_dtypes(include=['float32']).columns)
#             string_cols = list(transformed_df.select_dtypes(include=['object']).columns)
#             numeric_agg_dict=dict(zip(numeric_cols,['sum']*len(numeric_cols)))
#             str_agg_dict=dict(zip(string_cols,['max']*len(string_cols)))
#             date_agg_dict={time_column:'min','Time':'min'}
#             all_dict={**numeric_agg_dict,**str_agg_dict,**date_agg_dict}
#
#             aggregated_df=transformed_df.groupby(['Date',NE_column]).agg(all_dict)
#             del aggregated_df['Time']
#             result_list.append(aggregated_df)
#
#     return result_list
# #------------------------------------------------------
# def ne_aggregate(transformed_dfs):
#     Parameters=pd.read_csv('Parameters.csv')
#     NE_column=str(Parameters['NE_column'].iloc[0])
#     time_column=str(Parameters['time_column'].iloc[0])
#     granularity_col=str(Parameters['granularity column'].iloc[0])
#     result_list=[]
#     for df_counter,transformed_df in enumerate(transformed_dfs):
#         #(not transformed_df[granularity_col].iloc[0] == 1440) and
#         if  (not transformed_df[granularity_col].iloc[0] == 1440) and ('NE_Name' in transformed_df.columns):
#
#             numeric_cols=list(transformed_df.select_dtypes(include=['float32']).columns)
#             string_cols=list(transformed_df.select_dtypes(include=['object']).columns)
#
#             numeric_agg_dict=dict(zip(numeric_cols,['sum']*len(numeric_cols)))
#             str_agg_dict=dict(zip(string_cols,['max']*len(string_cols)))
#             date_agg_dict={time_column:'min','Time':'min','Date':'min'}
#             all_dict={**numeric_agg_dict,**str_agg_dict,**date_agg_dict}
#             aggregated_df=transformed_df.groupby(['NE_Name',time_column]).agg(all_dict)
#
#             Non_numeric_cols=str(Parameters['Non Numeric Columns'].iloc[0]).split(',')
#             string_cols_to_keep=[]
#             string_cols_to_keep.append('Time')
#             string_cols_to_keep.append('NE_Name')
#             string_cols_to_keep.extend(Non_numeric_cols)
#             #print(string_cols_to_keep)
#             #print(string_cols)
#             string_cols_to_delete = [i for i in string_cols if i not in string_cols_to_keep]
#             #print(string_cols_to_delete)
#             if len(string_cols_to_delete)>0:
#                 aggregated_df.drop(string_cols_to_delete, axis=1, inplace=True)
#             result_list.append(aggregated_df)
#    # for i,file in enumerate(result_list):
#    #     file.to_csv(r'C:\Users\JohnSmith\Desktop\Exercise Files\finalNe_Aggregation'+str(i)+'.csv')
#     return result_list
#------------------------------------------------------

# def crt_root_table_in_tempo_db(tempo_db_name,conn_str):
#     tempo_tbs= get_tbs_in_sql_db(tempo_db_name, "postgresql", conn_str)
#     for tempo_tb in tempo_tbs:
#         root_tb_name=tempo_tb.split("@")[0]+"@"+tempo_tb.split("@")[1]+"@root"
#         if not root_tb_name in tempo_tbs:
#             crt_root_table(tempo_db_name,conn_str,root_tb_name)
#             merge_data_from_temp_to_root_tb(tempo_db_name,conn_str,root_tb_name,tempo_tb)
#
#
# #------------------------------------------------------
# def relate_two_sql_tables(db_name, conn_str, source_tb, target_tb, source_cols_list, target_cols_list, db_type):
#     #dimensions = get_tb_dimensions(target_tb.split("@")[0], root_tb_name.split("@")[1])
#     foreign_key_sql_str=sql_str_add_foreign_key(db_name,source_tb,target_tb,source_cols_list,target_cols_list,db_type)
#     with open_db_connection(conn_str) as cursor:
#         cursor.execute(foreign_key_sql_str)
#     return True

#------------------------------------------------------
# def merge_data_from_temp_to_root_tb(db_name,conn_str,root_tb_name,tempo_tb):
#     dimensions = get_tb_dimensions(root_tb_name.split("@")[0], root_tb_name.split("@")[1])
#     sql_str_merge_source_tb_to_target_tb(db_name,db_name,conn_str,tempo_tb,root_tb_name,dimensions,dimensions)
#     return True
#------------------------------------------------------


#------------------------------------------------------
# def get_one_counter_from_df(input_df):
#     numerical_columns_names=list(input_df.select_dtypes(include=['float32'] ).columns)
#     GP_column_name = 'Granularity Period'
#     if numerical_columns_names[0]!= GP_column_name:
#         return numerical_columns_names[0]
#     else:
#         return numerical_columns_names[1]

#------------------------------------------------------


#------------------------------------------------------

# def crt_root_table(conn_str,db_name,root_tb_name):
#     rat_tech=root_tb_name.split("@")[0]
#     tb_type=root_tb_name.split("@")[1]
#     dimensions=get_tb_dimensions(rat_tech,tb_type)
#
#     cols_names_and_types=[]
#     for dimension in dimensions:
#         column_item=[dimension]
#         if dimension=="Date":
#             column_item.append("datetime")
#         else:
#             column_item.append("varchar")
#             column_item.append("300")
#         cols_names_and_types.append(column_item)
#         sql_str_crt_root_tb=crt_tb_sql_str(db_name, root_tb_name, dimensions,cols_names_and_types)
#     with open_db_connection(conn_str) as cursor:
#         cursor.execute(sql_str_crt_root_tb)
#     return True
#
# #------------------------------------------------------
# def append_temp_to_fixed_sql_tables(fixed_db_name,tempo_db_name,conn_str):
#     tempo_db_tables= get_tbs_in_sql_db(conn_str, "postgresql", tempo_db_name)
#     fixed_db_tables= get_tbs_in_sql_db(conn_str, "postgresql", fixed_db_name)
#     for tempo_tb in tempo_db_tables:
#         if tempo_tb in fixed_db_tables:
#             merge_tempo_tb_to_existing_fixed_tb(fixed_db_name, tempo_db_name, conn_str, tempo_tb)
#         else:
#             crt_fx_sql_tb_from_tempo_tb(fixed_db_name, tempo_db_name, conn_str, tempo_tb)
#     return True
# #------------------------------------------------------
# def add_ctr_in_tb(db_name,tb_name,ctr_name,conn_str):
#     sql_str_add_ctr="IF NOT EXISTS(SELECT * FROM ["+db_name+"""].INFORMATION_SCHEMA.COLUMNS WHERE
#       TABLE_NAME = '"""+tb_name+"""'
#                  AND COLUMN_NAME = '"""+ctr_name+"""') """
#     sql_str_add_ctr=sql_str_add_ctr+" ALTER TABLE ["+db_name+"[dbo].["+tb_name+"] ADD ["+ctr_name+"] float(53) NULL"
#     with open_db_connection(conn_str) as cursor:
#         cursor.execute(sql_str_add_ctr)
#     return True
# #------------------------------------------------------
# def merge_tempo_tb_to_existing_fixed_tb(fixed_db_name,tempo_db_name,conn_str,tempo_tb):
#     dimensions=get_tb_dimensions(tempo_tb.split("@")[0],tempo_tb.split("@")[1])
#     cols_list= get_cols_in_sql_tb(conn_str, "postgresql", tempo_tb, tempo_db_name)
#     sql_str_merge=sql_str_merge_source_tb_to_target_tb(tempo_db_name, fixed_db_name, conn_str, tempo_tb, tempo_tb, dimensions,
#                                          cols_list)
#     #sql_str_cols = ",".join(cols_list)
#     #sql_str_on_clause=" AND ".join(list(map([lambda x:"SOURCE."+x+" = TARGET."+x],dimensions)))
#     #sql_str_cols_update=",".join(list(map([lambda x:"TARGET."+x+"=SOURCE."+x],cols_list)))
#     #sql_str_merge="MERGE INTO ["+fixed_db_name+"].dbo.["+tempo_tb+"""] AS TARGET USING ("
#     #SELECT """+sql_str_cols+"	FROM ["+tempo_db_name+"].dbo.["+tempo_tb+"]) AS SOURCE ON "+sql_str_on_clause+"""WHEN MATCHED THEN
#     #UPDATE SET """+sql_str_cols_update+ " WHEN NOT MATCHED THEN INSERT ("+sql_str_cols+") VALUES("+sql_str_cols+");"
#     with open_db_connection(conn_str) as cursor:
#         cursor.execute(sql_str_merge)
#     return True
# #------------------------------------------------------
# def crt_fx_sql_tb_from_tempo_tb(fixed_db_name,tempo_db_name,conn_str,tempo_tb):
#     sql_str_create_fixedtb_from_temporary="SELECT * into ["+fixed_db_name+"].dbo.["+tempo_tb+"] FROM ["+tempo_db_name+"].[dbo].["+tempo_tb+"]'"
#     with open_db_connection(conn_str) as cursor:
#             cursor.execute(sql_str_create_fixedtb_from_temporary)
#     return True
# #------------------------------------------------------
#
# def ins_data_to_tempo_db(input_df, tempo_db_name, csv_dir, sql_host_name, sql_user, sql_password):
#
#     sql_str_master_conn= sql_str_crt_conn(sql_host_name,None,sql_user,sql_password)
#
#     if not chk_sql_db_exist(sql_str_master_conn,tempo_db_name):
#         if not create_sql_db(sql_str_master_conn,tempo_db_name):
#             print("New Temporary DB not created")
#             return
#
#     parameters = pd.read_csv('Parameters.csv')
#     if not "unclassified_counters" in input_df.name:
#         sql_str_tempo_db_conn = sql_str_crt_conn(sql_host_name, tempo_db_name, "postgres", "123456-c")
#         insert_df_to_sql(input_df, input_df.name, tempo_db_name, sql_host_name, sql_user, sql_password)
#         #create_sql_tb_from_df(input_df, input_df.name, sql_str_tempo_db_conn, tempo_db_name, None, None, None)
#         bulk_insert_directory=str(parameters['Bulk insert CSV Directory'])
#         # file_name_and_path=csv_dir +"\\"+ input_df.name+ '.csv'
#         # input_df.to_csv(file_name_and_path,sep='|',index=False)
#         # sql_insert_csv_command_string="BULK INSERT ["+ input_df.name +"] FROM '"+ file_name_and_path+"'"+""" WITH
#         # (
#         #    FIRSTROW = 2,
#         #    FIELDTERMINATOR = '|', --CSV field delimiter
#         #    ROWTERMINATOR = '\\n', --Use to shift the  control  to  next  row
#         #    TABLOCK
#         # )"""
#         # #ERRORFILE = """+"'"+str(parameters['bulk Insert Errors'])+os.path.splitext(file)[0]+""".csv',
#         # with open_db_connection(sql_str_new_db_conn) as cursor:
#         #     cursor.execute(sql_insert_csv_command_string)
#         #    # print(sql_command_string)
#     return
# #------------------------------------------------------
# def merge_tempo_db_to_fx_db(tempo_db_name,fixed_db_name,conn_str):
#     tempo_tbs= get_tbs_in_sql_db(conn_str,  tempo_db_name)
#     fixed_tbs= get_tbs_in_sql_db(conn_str,  fixed_db_name)
#     for tempo_tb in tempo_tbs:
#         if tempo_tb in fixed_tbs:
#             merge_tempo_tb_to_existing_fixed_tb(fixed_db_name,tempo_db_name,conn_str,tempo_tb)
#         else:
#             crt_fx_sql_tb_from_tempo_tb(fixed_db_name,tempo_db_name,conn_str,tempo_tb)
#      return True
# #------------------------------------------------------
# def get_func_subset_df():
#     func_df=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     func_df_filtered=func_df[(func_df['Import']=='YES')][['FunctionSubSet Name SQL','FunctionSubSet_id','Entity_Type_SQL']]
#     return func_df_filtered
# #------------------------------------------------------
# def get_list_of_func_subsets_in_dir(loc_dir):
#     list_of_files = glob.glob(loc_dir + '\\**\\*.csv', recursive=True)
#     #list_of_file_names_only=[file.split("\\")[-1] for file in list_of_files]
#     #print(list_of_file_names_only)
#     set_of_func_subsets=list(set([file.split("\\")[-1].split("_")[1] for file in list_of_files]))
#     #print(set_of_func_subsets)
#     return set_of_func_subsets
# #------------------------------------------------------
# def get_filtered_func_subset_df(list_of_func_subsets):
#     print(list_of_func_subsets)
#     if len(list_of_func_subsets)==0:
#         return None
#     func_df=pd.read_csv("Counters mapping.csv",encoding='latin1')
#     func_df_filtered=pd.DataFrame([])
#     #func_df_filtered=func_df[(func_df['Import']=='YES') & (func_df['FunctionSubSet_id']==int(list_of_func_subsets[0]))][['FunctionSubSet Name SQL','FunctionSubSet_id','Entity_Type_SQL']]
#     for func_subset_id in list_of_func_subsets:
#         func_subset_df=func_df[(func_df['Import']=='YES') & (func_df['FunctionSubSet_id']==int(func_subset_id))][['FunctionSubSet Name SQL','FunctionSubSet_id','Entity_Type_SQL']]
#         func_df_filtered=func_df_filtered.append(func_subset_df)
#     #print(func_df_filtered)
#     func_df_filtered.drop_duplicates(keep="first", inplace=True)
#     return func_df_filtered
# #------------------------------------------------------

#
# def process_one_function_subset(func_subset_id,raw_files_dir,sql_host_name,sql_user,sql_password,static_db_name,tempo_db_name,temp_loc_dir, Technology, sample_counter_name,list_of_timestamps):
#     pm_package_df = import_pm_func_subset_to_df(func_subset_id, "60", raw_files_dir, list_of_timestamps,
#                                                 sample_counter_name)
#     if pm_package_df is None:
#         return
#     # sample_counter_name=pm_package_df.columns.values.tolist()[-1]
#     pm_package_df.name = get_rat_tech(sample_counter_name) + "@" + get_ne_type(
#         sample_counter_name) + "@" + get_func_subset(sample_counter_name)
#     if "unclassified_counters" in pm_package_df.name:
#         print("unclassified counters in pm package: " + func_subset_id + " the package will be skipped")
#         del pm_package_df
#         return
#     transformed_df = transform_files(pm_package_df)
#     #print(transformed_df.name)
#     #transformed_df.to_csv(temp_loc_dir + "\\" + "input_df_" + transformed_df.name + '.csv')
#     #transformed_df.to_csv(temp_loc_dir + "\\" + transformed_df.name + '.csv', sep='|', index=False)
#     ins_data_to_tempo_db(transformed_df, tempo_db_name, temp_loc_dir, sql_host_name, sql_user, sql_password)

#------------------------------------------------------
# def launch_process():
#     raw_files_dir="C:\Raw Files"
#     sql_user="postgres"
#     sql_password="123456-c"
#     sql_host_name="192.168.174.128"
#     static_db_name="Statistics"
#     pivot_counter_mapping_table()
#     func_df=get_filtered_func_subset_df(get_list_of_func_subsets_in_dir(raw_files_dir))
#     func_df.drop_duplicates(keep="first",inplace=True)
#     func_subset_ids_list=list(set(func_df['FunctionSubSet_id']))
#
#
#     #print(func_subset_ids_list)
#     list_of_timestamps=["201812100000","201812101100"]
#
#     list_of_parallel_func_arguments = []
#     for func_subset_id in func_subset_ids_list:
#         ts = time.time()
#         st = datetime.fromtimestamp(ts).strftime('%Y%m%d%H%M%S')
#         tempo_db_name = "tempo_" + str(st)+"_"+str(randint(100000,1000000))
#         loc_dir = "C:\\Result" + "\\" + tempo_db_name
#         if not os.path.exists(loc_dir):  os.makedirs(loc_dir)
#         Technology=func_df[func_df['FunctionSubSet_id']==int(func_subset_id)]['Entity_Type_SQL'].iloc[0]
#         sample_counter_name=get_sample_counter_from_func_subset(func_subset_id,Technology)
#         set_of_arguments=(func_subset_id, raw_files_dir, sql_host_name, sql_user, sql_password, static_db_name,tempo_db_name,
#                                 "C:\\Result" + "\\" + tempo_db_name,Technology,sample_counter_name,list_of_timestamps)
#         list_of_parallel_func_arguments.append(set_of_arguments)
#     if __name__ == '__main__':
#
#         #pool_of_processes = multiprocessing.Pool(1)
#         #pool_of_processes.map(process_one_function_subset,list_of_parallel_func_arguments)
#         for args_item in list_of_parallel_func_arguments[:9]:
#             process_item=multiprocessing.Process(target=process_one_function_subset, args=args_item)
#             process_item.start()
#
#     #process_one_function_subset(func_subset_id, "C:\Raw Files", "192.168.174.128", "postgres", "123456-c", "Statistics",
#      #                           "C:\\Result" + "\\" + tempo_db_name,Technology,sample_counter_name,list_of_timestamps)
#
#     #for func_subset_id in func_subset_ids_list:
#     #    Technology=func_df[func_df['FunctionSubSet_id']==int(func_subset_id)]['Entity_Type_SQL'].iloc[0]
#     #    sample_counter_name=get_sample_counter_from_func_subset(func_subset_id,Technology)
#     #   pm_package_df=import_pm_func_subset_to_df(func_subset_id,"60",raw_files_dir,list_of_timestamps,sample_counter_name)
#     #    if pm_package_df is None:
#     #        continue
#     #   #sample_counter_name=pm_package_df.columns.values.tolist()[-1]
#     #    pm_package_df.name=get_rat_tech(sample_counter_name)+"@"+get_ne_type(sample_counter_name)+"@"+get_func_subset(sample_counter_name)
#     #    if "unclassified_counters" in pm_package_df.name :
#     #         print("unclassified counters in pm package: "+func_subset_id+" the package will be skipped")
#     #         del pm_package_df
#     #         continue
#     #     transformed_df = transform_files(pm_package_df)
#     #     print(transformed_df.name)
#     #     transformed_df.to_csv(loc_dir+"\\"+"input_df_" + transformed_df.name + '.csv')
#     #     transformed_df.to_csv(loc_dir+"\\"+ transformed_df.name+ '.csv',sep='|',index=False)
#     #     ins_data_to_tempo_db(transformed_df, tempo_db_name, loc_dir, sql_host_name, sql_user, sql_password)
#     return
    #accomulated_files=import_csv_2(r'C:\Raw Files')
#------------------------------------------------------

    #NE_aggregated_files=ne_aggregate(transformed_files)
#for i, file in enumerate(NE_aggregated_files):
#    file.to_csv(r'C:\Result\NE' + str(i) + '.csv')
#print(1)
#                       database='HSTS')
# conn.execute_non_query('CREATE TABLE persons(id INT, name VARCHAR(100))')
# engine = create_engine('mssql+pymssql://sa:123456-c@localhost/HSTS)')
# #engine = create_engine('mssql+pymssql://'+str(parameters['user'])+':'+str(parameters['password'])+'@'+str(parameters['SQL_Server_Name'])+':1432/'+str(parameters['Database'])+')')
# metadata = MetaData()
# #new_table=Table('new',metadata,column('new1'))
# df = pd.DataFrame({'name': ['User 1', 'User 2', 'User 3']})
# #for key in input_dfs_dictionary:
#   input_df=input_dfs_dictionary[key]
# df.to_sql(key,con=engine)
# parameters=pd.read_csv('Parameters.csv')
# print(str(parameters['SQL_Server_Name']))
# print(str(parameters['user']))
# print(str(parameters['password']))
# print(str(parameters['Database']))
#
# conn = pymssql.connect('localhost','sa','123456-c', str(parameters['Database']))
# cursor = conn.cursor()
# cursor.execute("""CREATE TABLE persons ( id INT NOT NULL,   name VARCHAR(100),  salesrep VARCHAR(100), PRIMARY KEY(id)  )""")

#  cnxn = pyodbc.connect('DRIVER={SQL Server};' +
#                        'SERVER=' + parameters['SQL_Server_Name'] + ';' +
#                        'DATABASE=' + parameters['Database'] + ';' +
#                        'UID=' + parameters['user'] + ';' +
#                        'PWD=' + parameters['password'])
#  cursor = cnxn.cursor()
#  cursor.execute(
#      """
#      CREATE TABLE Persons
#      (
#      P_Id int,
#      LastName varchar(255),
#      FirstName varchar(255),
#      Address varchar(255),
#      City varchar(255)
#      )
#      """
# # )

#
# def ins_data_to_tempo_db(input_dfs_dictionary):
#     parameters=pd.read_csv('Parameters.csv')
#     cnxn = pyodbc.connect('DRIVER={SQL Server};' +
#                           'SERVER=' + parameters['SQL_Server_Name'] + ';' +
#                           'DATABASE=' + parameters['Database'] + ';' +
#                           'UID=' + parameters['user'] + ';' +
#                           'PWD=' + parameters['password'])
#
#     # engine = create_engine('mssql+pymssql://sa:123456-c@DESKTOP-8GR679R:port/Statistics')
#     # m=MetaData()
#     # for key in input_dfs_dictionary:
#     #     input_df=input_dfs_dictionary[key]
#     #     schema_name=get_ne_type()
#     #     table_name=key
#
#
#
#     return
        #except:
         #   continue



            # new_subset.export_me_to_postgresql(sql_host_name, tempo_schema_name, sql_user, sql_password)

# def oop_launch_process():
#     raw_files_dir = "C:\Raw Files"
#     sql_user = "postgres"
#     sql_password = "123456-c"
#     sql_host_name = "192.168.137.128"
#     static_db_name = "Statistics"
#     pivoted_counter_mapping_df = pivot_counter_mapping_table()
#     # with open('pivoted_counter_mapping.pickle','rb') as f:
#     # pivoted_counter_mapping_df = pickle.load(f)
#     pivoted_counter_mapping_df = pivoted_counter_mapping_df.sort_values('Import Rank')
#     list_of_parallel_func_arguments = []
#     for index, row in pivoted_counter_mapping_df.iterrows():
#         set_of_arguments = (
#         row['Entity_Type_SQL'], row['Object_Type_SQL'], row['FunctionSubSet_id'], raw_files_dir, sql_host_name,
#         sql_user, sql_password)
#         list_of_parallel_func_arguments.append(set_of_arguments)
#     number_of_concurrent_import_operations = 10
#     if __name__ == '__main__':
#         for i in range(number_of_concurrent_import_operations, len(list_of_parallel_func_arguments),
#                        number_of_concurrent_import_operations):
#             for args_item in list_of_parallel_func_arguments[i - number_of_concurrent_import_operations:i]:
#                 process_item = multiprocessing.Process(target=oop_launch_one_process, args=args_item)
#                 process_item.start()
#
#     return

# def update_the_registry(raw_files_dir):
#     pivoted_counter_mapping_df=pd.read_csv(os.getcwd() + "\\" + 'pivoted_counter_mapping.csv',encoding='latin1')
#     all_files_in_loc_dir = glob.glob(raw_files_dir + '/**/*.csv', recursive=True)
#     registry_df = pd.read_csv(os.getcwd()+"\\"+'Raw_Files_Registry.csv')
#     new_registry_entries_df=registry_df[0:0]
#     in_registry_file_pathes=registry_df['File Full Path'].tolist()
#     new_files_list = np.setdiff1d(all_files_in_loc_dir,in_registry_file_pathes)
#     for pm_package_full_path in new_files_list:
#         if not os.path.isfile(pm_package_full_path) \
#                 or not os.path.exists(pm_package_full_path) \
#                 or not os.path.splitext(pm_package_full_path)[1] == ".csv":
#             print("not valid pm package used as input:"+pm_package_full_path)
#             continue
#         with open(pm_package_full_path) as f:
#             first_line = f.readline()
#             f.readline()
#             third_line=f.readline()
#         header_list = reader([first_line])
#         list_of_third_line= list(reader([third_line]))[0]
#         timestamp_str=list_of_third_line[0]
#         granularity=int(list_of_third_line[1])
#         datetime_object = datetime.strptime(timestamp_str, '%Y-%m-%d %H:%M')
#         object_name_sample=list_of_third_line[2]
#         if not all(elem in ['Result Time','Object Name','Reliability','Granularity Period'] for elem in header_list):
#             print("not valid pm package used as input:" + pm_package_full_path)
#             continue
#         for column in ['Result Time','Object Name','Reliability','Granularity Period']:
#             header_list.remove(column)
#         header_list = sorted(header_list)
#         pivoted_counter_mapping_df = pivoted_counter_mapping_df[pivoted_counter_mapping_df['counters_list'] == header_list][
#             ['Entity_Type_SQL', 'Object_Type_SQL', 'FunctionSubSet_id','FunctionSubSet Name SQL', 'counters_list']]
#         if len(pivoted_counter_mapping_df.index) > 0:  # counting the rows in the filtered dataframe
#             entity_type = pivoted_counter_mapping_df['Entity_Type_SQL'].iloc[0]
#             object_type = pivoted_counter_mapping_df['Object_Type_SQL'].iloc[0]
#             func_subset_id = str(pivoted_counter_mapping_df['FunctionSubSet_id'].iloc[0])
#             func_subset_sql_name= str(pivoted_counter_mapping_df['FunctionSubSet Name SQL'].iloc[0])
#             row_series=pd.Series([pm_package_full_path,entity_type,object_type,func_subset_sql_name,func_subset_id,datetime_object,"NO"],index=['File Full Path','Entity_Type_SQL','Object_Type_SQL','FunctionSubSet Name SQL','FunctionSubSet_id','Granularity','TimeStamp','Merged_to_SQL_DB'])
#             new_registry_entries_df=new_registry_entries_df.append(row_series,ignore_index=True)
