import numpy as np
import time
import random
#from sql_functions_postgresql import *
import io
from sqlalchemy.types import DECIMAL
from contextlib import contextmanager

import psycopg2
# from sql_functions_postgresql import *
from sqlalchemy import create_engine
import pandas as pd

class postgres_worker_v2:
    def __init__(self, sql_host_name, sql_user, sql_password):
        self.entity_type=None
        self.object_type=None
        self.func_subset_id=None
        self.func_subset_name=None
        self.func_subset_worker=None
        self.sql_host_name=sql_host_name
        self.sql_user=sql_user
        self.sql_password=sql_password
        self.timestamp_column='Result Time'
        self.granularity_column='Granularity Period'
        self.object_name_column='Object Name'
        self.db_name= "Statistics"
        self.static_schema_name= "Hourly"
        self.bookkeeper_schema="bookkeeper"
        self.bookkeeper_tb_name="bookkeeper"
        self.data_tb_name=None
        self.Hourly_schema_alch_engine = create_engine(
            "postgresql+psycopg2://" + self.sql_user + ":" + self.sql_password + "@" + self.sql_host_name + ":5432/" + self.db_name)
        if not self.chk_sql_db_exist(self.db_name):
            self.create_sql_db(self.db_name)
        self.Hourly_schema_alch_engine.execute("SET search_path TO public;")
        if not self.chk_sql_schema_exist(self.static_schema_name):
            self.create_sql_schema(self.static_schema_name)
        if not self.chk_sql_schema_exist(self.bookkeeper_schema):
            self.create_sql_schema(self.bookkeeper_schema)

        # self.Hourly_schema_alch_engine.execute("SET search_path TO " + sql_schema_name + ";")

    #######################################################
    def create_sql_db(self,db_name):
        with open('Create DB-PostgresSQL.txt', 'r') as myfile:
            Create_DB_Sql_String = myfile.read().replace("Temporary_2452", db_name)
            sql_lines = Create_DB_Sql_String.split('\n')
        with self.open_db_connection(commit=True) as cursor:
            for sql_line in sql_lines:
                cursor.execute(sql_line)
        if self.chk_sql_db_exist(db_name):
            return True
        else:
            return False

    ########################
    def create_sql_schema(self,schema_name):
        self.Hourly_schema_alch_engine.execute("CREATE SCHEMA \"" + schema_name + "\"")
        return True
    ########################
    def chk_sql_db_exist(self,db_name):
        sql_line_to_execute = "SELECT datname FROM pg_catalog.pg_database;"
        q=self.Hourly_schema_alch_engine.execute(sql_line_to_execute)
        query_fetch=q.fetchall()
        list_of_dbs = [list(item)[0] for item in query_fetch]
        if db_name in list_of_dbs:
            return True
        else:
            return False
    #############################################
    def chk_sql_schema_exist(self,schema_name):
        sql_line_to_execute = "select schema_name from information_schema.schemata"
        q=self.Hourly_schema_alch_engine.execute(sql_line_to_execute)
        # print(sql_line_to_execute)
        query_fetch = q.fetchall()
        list_of_schemas = [list(item)[0] for item in query_fetch]
        if schema_name in list_of_schemas:
            return True
        else:
            return False

################################################################
##########################################################

############################################################
    @contextmanager
    def open_db_connection(self,commit=False):
        conn_str="host='"+self.sql_host_name+"' dbname='"+self.db_name+"' user='"+self.sql_user+"' password='"+self.sql_password+"'"
        try:
            connection = psycopg2.connect(conn_str)
            if commit:
                connection.autocommit = True
        except psycopg2.DatabaseError as err:
            print("unable to connect to database")
            print(err.args)
            # cursor.execute("ROLLBACK")
            raise err
        cursor = connection.cursor()
        cursor.execute("SET search_path TO \"" + self.static_schema_name + "\";")
        try:
            yield cursor
        except psycopg2.DatabaseError as err:
            print(err.args)
            # cursor.execute("ROLLBACK")
            raise err

        finally:
            connection.close()
##############################################################
    def init_with_func_subset(self, funct_subset_object):

        self.data_df=funct_subset_object.main_df
        self.entity_type=funct_subset_object.entity_type
        self.object_type=funct_subset_object.object_type
        self.func_subset_id = funct_subset_object.func_subset_id
        self.data_tb_name=funct_subset_object.name
        self.func_subset_name=self.data_tb_name.split("@")[2]
        self.bookkeeper_df=self.build_bookkeeper_df()
        print("finished initializing postgres worker for package:"+self.data_tb_name)
        return True
    def build_bookkeeper_df(self):
        bookkeeper_df=self.data_df[[self.timestamp_column]].drop_duplicates(keep='first')
        bookkeeper_df['Entity_Type_SQL']=self.entity_type
        bookkeeper_df['Object_Type_SQL'] = self.object_type
        bookkeeper_df['FunctionSubSet Name SQL'] = self.func_subset_name
        bookkeeper_df['FunctionSubSet_id'] = self.func_subset_id
        return bookkeeper_df

    def merge_data_df_to_sql_data_tb(self):
        if not self.chk_tb_exist_in_static_schema(self.data_tb_name):
            if self.create_sql_tb_from_data_df(self.data_df, self.data_tb_name):
                conn = self.Hourly_schema_alch_engine.raw_connection()
                cur = conn.cursor()
                output = io.StringIO()
                self.data_df.to_csv(output, sep='|', header=False, index=False)
                output.seek(0)
                cur.copy_from(output, "\"" + self.static_schema_name + "\".\"" + self.data_tb_name + "\"", sep='|', null="")  # null values become ''
                conn.commit()
            return True
        else:
            self.exclude_already_existing_keys_from_data_df()
            if self.data_df.empty:
                print("all records are merged before")
                return True
            extra_counters_list = self.get_extra_counters_in_my_data_tb()
            if extra_counters_list is not None:
                if len(extra_counters_list) > 0:
                    self.add_extra_cols_to_static_data_tb(extra_counters_list)
            sql_columns_names = self.get_sql_columns_names_in_tb(self.static_schema_name, self.data_tb_name)
            for item in sql_columns_names:
                if item not in list(self.data_df.columns.values):
                    self.data_df[item] = np.nan
            self.data_df = self.data_df[sql_columns_names]
            conn = self.Hourly_schema_alch_engine.raw_connection()
            cur = conn.cursor()
            output = io.StringIO()
            self.data_df.to_csv(output, sep='|', header=False, index=False)
            output.seek(0)
            cur.copy_from(output, "\"" + self.static_schema_name + "\".\"" + self.data_tb_name + "\"",
                           sep='|', null="")  # null values become ''
            conn.commit()
            return True



    def merge_bookkeeper_df_to_sql_bookkeeper_tb(self):
        if not self.chk_tb_exist_in_bookkeeper_schema(self.bookkeeper_tb_name):
            if self.create_sql_tb_from_bookkeeper_df(self.bookkeeper_df, self.bookkeeper_tb_name):
                conn = self.Hourly_schema_alch_engine.raw_connection()
                cur = conn.cursor()
                output = io.StringIO()
                self.bookkeeper_df.to_csv(output, sep='|', header=False, index=False)
                output.seek(0)
                cur.copy_from(output, "\"" + self.bookkeeper_schema + "\".\"" + self.bookkeeper_df + "\"", sep='|', null="")  # null values become ''
                conn.commit()
            return True
        else:
            self.exclude_already_existing_keys_from_bookkeeper_df()
            if self.bookkeeper_df.empty:
                print("all records are merged before")
                return True
            conn = self.Hourly_schema_alch_engine.raw_connection()
            cur = conn.cursor()
            output = io.StringIO()
            self.bookkeeper_df.to_csv(output, sep='|', header=False, index=False)
            output.seek(0)
            cur.copy_from(output, "\"" + self.bookkeeper_schema + "\".\"" + self.bookkeeper_tb_name + "\"", sep='|', null="")  # null values become ''
            conn.commit()
            return True


    def exclude_already_existing_keys_from_bookkeeper_df(self):
        list_of_time_stamps=list(set(self.bookkeeper_df[self.timestamp_column].tolist()))
        list_of_time_stamps=[item.strftime("\'%Y-%m-%d %H:%M\'") for item in list_of_time_stamps]
        list_of_time_stamps_as_str=",".join(list_of_time_stamps)
        sql_str_get_overlap_keys="select \""+self.timestamp_column+"\",\"Entity_Type_SQL\",\"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\" from \""+self.bookkeeper_schema+"\".\""+self.bookkeeper_tb_name+"\" where \""+self.timestamp_column+"\" in ("+list_of_time_stamps_as_str+") AND \"Entity_Type_SQL\"=\'"+self.entity_type+"\' AND \"Object_Type_SQL\"=\'"+self.object_type+"\' AND \"FunctionSubSet_id\"=\'"+str(self.func_subset_id)+"\'"
        df_of_overlapped_keys=pd.read_sql_query(sql_str_get_overlap_keys,self.Hourly_schema_alch_engine,coerce_float=True,parse_dates=['Result Time'])
        df_of_overlapped_keys['FunctionSubSet_id']=pd.to_numeric(df_of_overlapped_keys['FunctionSubSet_id'])
        self.bookkeeper_df['FunctionSubSet_id']=pd.to_numeric(self.bookkeeper_df['FunctionSubSet_id'])
        df_of_overlapped_keys.set_index([self.timestamp_column,'Entity_Type_SQL','Object_Type_SQL','FunctionSubSet Name SQL','FunctionSubSet_id'])
        self.bookkeeper_df.set_index([self.timestamp_column,'Entity_Type_SQL','Object_Type_SQL','FunctionSubSet Name SQL','FunctionSubSet_id'])
        df_of_overlapped_keys.loc[:, self.timestamp_column] = pd.to_datetime(df_of_overlapped_keys[self.timestamp_column],
                                                                        format='%Y-%m-%d %H:%M')

        df_of_overlapped_keys['already_merged']="YES"
        self.bookkeeper_df = pd.merge( self.bookkeeper_df,df_of_overlapped_keys,
                                      on=[self.timestamp_column,'Entity_Type_SQL','Object_Type_SQL','FunctionSubSet Name SQL','FunctionSubSet_id'], how='left')
        list_of_bookkeeper_df_columns=list(self.bookkeeper_df.columns.values)
        list_of_bookkeeper_df_columns.remove('already_merged')

        self.bookkeeper_df=self.bookkeeper_df[self.bookkeeper_df['already_merged']!="YES"][list_of_bookkeeper_df_columns]
        return True

    def exclude_already_existing_keys_from_data_df(self):
        list_of_time_stamps=list(set(self.data_df[self.timestamp_column].tolist()))
        list_of_time_stamps=[item.strftime("\'%Y-%m-%d %H:%M\'") for item in list_of_time_stamps]
        list_of_time_stamps_as_str=",".join(list_of_time_stamps)
        sql_str_get_overlap_keys="select \""+self.timestamp_column+"\",\""+self.object_name_column+"\" from \""+self.static_schema_name+"\".\""+self.data_tb_name+"\" where \""+self.timestamp_column+"\" in ("+list_of_time_stamps_as_str+")"
        df_of_overlapped_keys=pd.read_sql_query(sql_str_get_overlap_keys,self.Hourly_schema_alch_engine,coerce_float=True,parse_dates=['Result Time'])

        df_of_overlapped_keys.set_index([self.timestamp_column,self.object_name_column])
        self.data_df.set_index([self.timestamp_column,self.object_name_column])
        df_of_overlapped_keys.loc[:, self.timestamp_column] = pd.to_datetime(df_of_overlapped_keys[self.timestamp_column],
                                                                        format='%Y-%m-%d %H:%M')
        df_of_overlapped_keys['already_merged']="YES"
        self.data_df = pd.merge( self.data_df,df_of_overlapped_keys,
                                      on=[self.timestamp_column,self.object_name_column], how='left')
        list_of_data_df_columns=list(self.data_df.columns.values)
        list_of_data_df_columns.remove('already_merged')
        self.data_df=self.data_df[self.data_df['already_merged']!="YES"][list_of_data_df_columns]
        return True




    #############################################################################################
    def get_list_of_my_tb_names(self):
        q = self.Hourly_schema_alch_engine.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.static_schema_name + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        return list_of_tables
    #############################################################################################
    def chk_tb_exist_in_static_schema(self, tb_name):

        q = self.Hourly_schema_alch_engine.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='"+self.static_schema_name+"'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        if tb_name in list_of_tables:
            return True
        else:
            return False

    def chk_tb_exist_in_bookkeeper_schema(self, tb_name):

        q = self.Hourly_schema_alch_engine.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.bookkeeper_schema + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        if tb_name in list_of_tables:
            return True
        else:
            return False
    ##############################################################################################
    def add_foriegn_keys_to_static_tb(self):
        sql_str_add_foriegn_key="ALTER TABLE \""+self.static_schema_name+"\".\""+self.data_tb_name+"""\" 
        ADD CONSTRAINT \"FK_"""+self.data_tb_name+"_"+self.root_tb_name+"\" FOREIGN KEY (\""+self.timestamp_column+"\", \""+self.object_name_column+"\") REFERENCES \""+self.static_schema_name+"\".\""+self.root_tb_name+"\" (\""+self.timestamp_column+"\", \""+self.object_name_column+"\");"
        self.Hourly_schema_alch_engine.execute(sql_str_add_foriegn_key)
        return True
    def chk_tb_exist_in_my_schema(self, tb_name):
        eng = self.Hourly_schema_alch_engine
        q = eng.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.static_schema_name + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        if tb_name in list_of_tables:
            return True
        else:
            return False
    def chk_tb_exist_in_my_schema(self, tb_name):
        eng = self.Hourly_schema_alch_engine
        q = eng.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema='" + self.static_schema_name + "'  AND table_type='BASE TABLE';")
        list_of_tables = [item[0] for item in q.fetchall()]
        if tb_name in list_of_tables:
            return True
        else:
            return False
    ##############################################################################################
    def get_sql_columns_types(list_of_df_types):
        types_dictionary={'float64':'float8','datetime64[ns]':'timestamp','object':'varchar(500)','float32':'float8'}
        sql_types_list=[types_dictionary[str(df_type)] for df_type in list_of_df_types]
        return sql_types_list
    ##############################################################################################
    def create_root_tb_in_my_schema(self):
        self.root_tb_name= self.data_tb_name.split("@")[0] + "@" + self.data_tb_name.split("@")[1] + "@root"
        dimensions=[self.timestamp_column,self.object_name_column]
        if not self.chk_tb_exist_in_my_schema(self.root_tb_name):
            sql_str_crt_root_tb = "CREATE TABLE \""+self.static_schema_name + "\".\"" + self.root_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"" + self.object_name_column + "\" text COLLATE \"pg_catalog\".\"default\" not null);"
            self.Hourly_schema_alch_engine.execute(sql_str_crt_root_tb)
            sql_str_crt_prim_key="ALTER TABLE \""+self.static_schema_name + "\".\"" + self.root_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\");"
            self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)
            sql_str_ins_data_to_root="insert into \""+self.static_schema_name + "\".\"" + self.root_tb_name + "\" (\"" + self.timestamp_column + "\",\"" + self.object_name_column + "\") select DISTINCT \"" + self.timestamp_column + "\",\"" + self.object_name_column + "\" from \"" + self.static_schema_name + "\".\"" + self.data_tb_name + "\";"
            self.Hourly_schema_alch_engine.execute(sql_str_ins_data_to_root)
#########################################################
    ##############################################################################################
    def create_left_anti_of_tb(self,targeted_tb_name):
        anti_left_tb_name="left_anti_"+targeted_tb_name
        sql_str_create_anti_left = "CREATE TABLE " + self.static_schema_name + ".\"" + anti_left_tb_name + "\" (\"Result Time\" timestamp NOT NULL);"
        self.Hourly_schema_alch_engine.execute(sql_str_create_anti_left)
        sql_str_create_anti_left = "INSERT INTO \"" + self.static_schema_name + "\".\"" + anti_left_tb_name + "\" (\"" + self.timestamp_column + "\") SELECT DISTINCT " + self.static_schema_name + ".\"" + targeted_tb_name + "\".\"" + self.timestamp_column + "\" FROM " + self.static_schema_name + ".\"" + targeted_tb_name + "\" LEFT JOIN \"" + self.static_schema_name + "\".\"" + targeted_tb_name + """\" ON
        """ + self.static_schema_name + ".\"" + targeted_tb_name + "\".\"" + self.timestamp_column + "\" = \"" + self.static_schema_name + "\".\"" + targeted_tb_name + "\".\"" + self.timestamp_column + """\" 
        AND """ + self.static_schema_name + ".\"" + targeted_tb_name + "\".\"" + self.object_name_column + "\" = \"" + self.static_schema_name + "\".\"" + targeted_tb_name + "\".\"" + self.object_name_column + """\" 
          WHERE \"""" + self.static_schema_name + "\".\"" + targeted_tb_name + "\".\""+self.timestamp_column+"\" IS NULL;"
        self.Hourly_schema_alch_engine.execute(sql_str_create_anti_left)


            ############################################################
    ##############################################################################################
 #    def delete_bookkeeper_tb(self):
 #        sql_str_drop_my_bookkeeper="Drop TABLE \""+self.bookkeeper_tb_name+"\""
 #        self.Hourly_schema_alch_engine.execute(sql_str_drop_my_bookkeeper)
 #        return True
 # ##########################################################
    ##############################################################################################
    def dispose_connections(self):
        self.Hourly_schema_alch_engine.dispose()
        return True
    def get_number_of_rows_in_tb(self,schema_name,tb_name):
        sql_str_rows_count="SELECT count(*) FROM "+schema_name+".\""+tb_name+"\";"
        q=self.Hourly_schema_alch_engine.execute(sql_str_rows_count)
        query_fetched_data=q.fetchall()
        list_of_items=[list(item)[0] for item in query_fetched_data]

        return int(list_of_items[0])
    ##############################################################################################
    def get_sql_columns_names_and_types_in_tb(self,schema_name,tb_name):
        sql_str_get_cols_names_and_types="""SELECT COLUMN_NAME,	data_type FROM information_schema.COLUMNS WHERE
        TABLE_NAME =\'"""+tb_name+"\' AND table_catalog = \'"+self.db_name+"""\' 
        AND table_schema = '"""+schema_name+"\';"
        q=self.Hourly_schema_alch_engine.execute(sql_str_get_cols_names_and_types)
        query_fetched_data=q.fetchall()
        list_of_col_names_and_types=[]
        for item in query_fetched_data:
            list_of_col_names_and_types.append([list(item)[0],list(item)[1]])
        return list_of_col_names_and_types
    ##############################################################################################
    def get_sql_columns_names_in_tb(self,schema_name,tb_name):
        sql_str_get_cols_names_and_types="""SELECT COLUMN_NAME,	data_type FROM information_schema.COLUMNS WHERE
        TABLE_NAME =\'"""+tb_name+"\' AND table_catalog = \'"+self.db_name+"""\' 
        AND table_schema = '"""+schema_name+"\';"
        q=self.Hourly_schema_alch_engine.execute(sql_str_get_cols_names_and_types)
        query_fetched_data=q.fetchall()
        list_of_cols_names=[]
        for item in query_fetched_data:
            list_of_cols_names.append(list(item)[0])
        return list_of_cols_names
    ##############################################################################################
    def get_extra_counters_in_my_data_tb(self):
        extra_counters=[]
        list_of_cols_name_and_types_in_static_tb=self.get_sql_columns_names_and_types_in_tb(self.static_schema_name,self.data_tb_name)
        list_of_cols_names_in_static_tb=[item[0] for item in list_of_cols_name_and_types_in_static_tb]
        list_of_cols_name_and_types_in_my_tb=self.get_sql_columns_names_and_types_in_tb(self.static_schema_name, self.data_tb_name)
        #list_of_cols_names_in_my_tb=[item[0] for item in list_of_cols_name_and_types_in_my_tb]
        for item in list_of_cols_name_and_types_in_my_tb:
            if item[0] not in list_of_cols_names_in_static_tb:
                extra_counters.append(item)
        if len(extra_counters)>0:
            return extra_counters
        else:
            return None
    ##############################################################################################
    def add_extra_cols_to_static_data_tb(self, extra_counters_list):
        if extra_counters_list is not None:
            if len(extra_counters_list)>1:
                for item in extra_counters_list:
                    self.add_new_col_in_tb(self.static_schema_name,self.data_tb_name,item[0],item[1])
    ##############################################################################################
    def add_new_col_in_tb(self,schema_name,tb_name,col_name,col_type):
        sql_str_add_new_col="alter table "+schema_name+".\""+tb_name+"\" add column \""+col_name+"\" "+col_type
        self.Hourly_schema_alch_engine.execute(sql_str_add_new_col)
        return True
    ##############################################################################################
    def get_sql_columns_names_and_types(self,input_list_of_lists):
        types_dictionary = {'float64': 'numeric(24)', 'datetime64[ns]': 'timestamp(6)', 'object': 'text COLLATE \"pg_catalog\".\"default\"',
                            'float32': 'numeric(24)'}
        sql_output_list_of_lists = [[item[0],types_dictionary[str(item[1])]] for item in input_list_of_lists]
        return sql_output_list_of_lists

    def create_sql_tb_from_data_df(self, input_df, table_name):
        list_of_df_cols_name_and_types=[[column_name,str(input_df[column_name].dtype)] for column_name in input_df.columns]
        cols_sql_names_and_types_list = self.get_sql_columns_names_and_types(list_of_df_cols_name_and_types)
        sql_final_string = self.crt_tb_sql_str( table_name,  cols_sql_names_and_types_list)
        sql_str_crt_prim_key = "ALTER TABLE "+self.static_schema_name+".\"" + self.data_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\");"

        try:
            self.Hourly_schema_alch_engine.execute(sql_final_string)
            self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)

            return True
        except Exception as e:
            print(sql_final_string)
            print(e.__cause__)
            return False
        # with self.open_db_connection() as cursor:
        #
        #     cursor.execute(sql_final_string)

    def create_sql_tb_from_bookkeeper_df(self, input_df, table_name):
        list_of_df_cols_name_and_types=[[column_name,str(input_df[column_name].dtype)] for column_name in input_df.columns]
        cols_sql_names_and_types_list = self.get_sql_columns_names_and_types(list_of_df_cols_name_and_types)
        sql_final_string = self.crt_tb_sql_str( table_name,  cols_sql_names_and_types_list)
        sql_str_crt_prim_key = "ALTER TABLE "+self.static_schema_name+".\"" + self.bookkeeper_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"Entity_Type_SQL\" SET NOT NULL, ALTER COLUMN \"Object_Type_SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet Name SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet_id\" SET NOT NULL ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"Entity_Type_SQL\",\"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\");"

        try:
            self.Hourly_schema_alch_engine.execute(sql_final_string)
            self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)

            return True
        except Exception as e:
            print(sql_final_string)
            print(e.__cause__)
            return False
        # with self.open_db_connection() as cursor:
        #
        #     cursor.execute(sql_final_string)


    def crt_tb_sql_str(self, tb_name,cols_sql_names_and_types_list):
        cols_str = ""
        for  col in cols_sql_names_and_types_list:
            if col[0] in [self.timestamp_column,self.object_name_column]:
                cols_str = cols_str + "\"" + col[0] + "\" " + col[1] + "  NOT NULL,"
            else:
                cols_str = cols_str + "\"" + col[0] + "\" " + col[1] + " ,"
        cols_str = cols_str[:-1]
        crt_tb_str = "CREATE TABLE \""+self.static_schema_name + "\".\"" + tb_name + "\" (" + cols_str + ");"
        return crt_tb_str

    # def create_my_root_in_static_schema(self):
    #     engine=self.Hourly_schema_alch_engine
    #     sql_str_crt_root_tb = "CREATE TABLE \""+self.static_schema_name+"\".\"" + self.root_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"" + self.object_name_column + "\" text COLLATE \"pg_catalog\".\"default\" not null);"
    #     engine.execute(sql_str_crt_root_tb)
    #     sql_str_crt_prim_key = "ALTER TABLE \""+self.static_schema_name+"\".\"" + self.root_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\");"
    #     engine.execute(sql_str_crt_prim_key)
    ################################################################
    def create_my_data_tb_in_static_schema(self):
        list_of_cols_names_and_types=self.get_sql_columns_names_and_types_in_tb(self.static_schema_name, self.data_tb_name)
        sql_str_create_tb="CREATE TABLE "+self.static_schema_name+".\""+self.data_tb_name+"\" ("
        for item in list_of_cols_names_and_types:
            sql_str_create_tb=sql_str_create_tb+"\""+item[0]+"\""+" "+item[1]+","
        sql_str_create_tb=str(sql_str_create_tb[:-1]+")")
        print(sql_str_create_tb)
        self.Hourly_schema_alch_engine.execute(sql_str_create_tb)
        # self.Hourly_schema_alch_engine.execute(sql_str_create_tb)
        sql_str_crt_prim_key = "ALTER TABLE "+self.static_schema_name+".\"" + self.data_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\");"
        self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)
        if self.chk_tb_exist_in_static_schema(self.root_tb_name):
            self.add_foriegn_keys_to_static_tb()
    ################################################################
    def merge_my_root_to_static_schema(self):
        # columns_list = [self.timestamp_column,"Entity_Type_SQL", "Object_Type_SQL","FunctionSubSet Name SQL"]
        if not self.chk_tb_exist_in_static_schema(self.root_tb_name):
            self.create_my_root_in_static_schema()
            sql_str_ins_data_to_root = "insert into \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\" (\"" + self.timestamp_column + "\",\"" + self.object_name_column + "\") select DISTINCT \"" + self.timestamp_column + "\",\"" + self.object_name_column + "\" from \"" + self.static_schema_name + "\".\"" + self.data_tb_name + "\" ON CONFLICT DO NOTHING;"
            try:
                self.Hourly_schema_alch_engine.execute(sql_str_ins_data_to_root)
                return True
            except Exception as e:
                if "DeadLock" in str(e.__cause__):
                    time.sleep(random.randint(1, 30))
                    self.Hourly_schema_alch_engine.execute(sql_str_ins_data_to_root)
                    return True

            return True
        else:
            self.create_left_anti_of_tb(self.root_tb_name)
            if self.get_number_of_rows_in_tb(self.static_schema_name, "left_anti_" + self.root_tb_name) > 0:
                sql_str_insert_left_anti_to_static_root = "INSERT INTO " + self.static_schema_name + ".\"" + self.root_tb_name + "\" ( \"" + self.timestamp_column + "\", \"" + self.object_name_column + """\" ) SELECT 
                 """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + """\",
                 """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.object_name_column + """\" 
                 FROM """ + self.static_schema_name + ".\"" + self.root_tb_name + "\" INNER JOIN " + self.static_schema_name + ".\"" + "left_anti_" + self.root_tb_name + """\"  
                 ON """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + "\" = " + self.static_schema_name + ".\"" + "left_anti_" + self.root_tb_name + "\".\"" + self.timestamp_column + """\" 
                 ON CONFLICT DO NOTHING"""
                self.Hourly_schema_alch_engine.execute(sql_str_insert_left_anti_to_static_root)

        # #sql_str_ins_timestamps_to_bookkeep = "insert into \"" + self.bookkeeper_tb_name + "\" (\"" + self.timestamp_column + "\") select DISTINCT \"" + self.timestamp_column + "\" from public.\"" + self.data_table_name + "\";"
        # sql_str_merge_timestamps_to_bookkeeper=" "+self.bookkeeper_tb_name+" CA USING (SELECT CustomerId, TransactionValue"""
        #
        # sql_str_insert_func_subset_info="UPDATE public.\""+self.data_tb_name+"\" SET \"Entity_Type_SQL\"="+self.entity_type+", \"Object_Type_SQL\"="+self.object_type+", \"FunctionSubSet Name SQL\"="+self.func_subset_name+", \"FunctionSubSet _id\"="+self.func_subset_id
        # self.external_engine.execute(sql_str_insert_func_subset_info)
        return True
    ################################################################
    def merge_my_data_tb_to_static_schema(self):
        if not self.chk_tb_exist_in_static_schema(self.data_tb_name):
            self.create_my_data_tb_in_static_schema()
        extra_counters_list= self.get_extra_counters_in_my_data_tb()
        if extra_counters_list is not None:
            if len(extra_counters_list)>0:
                self.add_extra_cols_to_static_data_tb(extra_counters_list)
        self.create_left_anti_of_tb(self.data_tb_name)
        if self.get_number_of_rows_in_tb(self.static_schema_name, "left_anti_" + self.data_tb_name) > 0:
            list_of_cols_names = self.get_sql_columns_names_in_tb(self.static_schema_name, self.data_tb_name)
            sql_str_col_names = ""
            for item in list_of_cols_names:
                sql_str_col_names = sql_str_col_names + "\"" + item + "\","
            sql_str_col_names = sql_str_col_names[:-1]
            sql_str_col_names_with_path = ""
            for item1 in list_of_cols_names:
                sql_str_col_names_with_path = sql_str_col_names_with_path + self.static_schema_name + ".\"" + self.data_tb_name + "\"" + ".\"" + item1 + "\","
            sql_str_col_names_with_path = sql_str_col_names_with_path[:-1]
            sql_str_insert_left_anti_part1 = "INSERT INTO " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ( "+sql_str_col_names+" )  SELECT "
            sql_str_insert_left_anti_part2=sql_str_col_names_with_path+" FROM " + self.static_schema_name + ".\"" + self.data_tb_name + "\" INNER JOIN " + self.static_schema_name + ".\"" + "left_anti_" + self.data_tb_name + """\"  
                         ON """ + self.static_schema_name + ".\"" + self.data_tb_name + "\".\"" + self.timestamp_column + "\" = " + self.static_schema_name + ".\"" + "left_anti_" + self.data_tb_name + "\".\"" + self.timestamp_column + """\" 
        	             ON CONFLICT DO NOTHING"""
            self.Hourly_schema_alch_engine.execute(sql_str_insert_left_anti_part1+sql_str_insert_left_anti_part2)
        return True
    def faster_merge_my_data_tb_to_static_schema(self):
        if not self.chk_tb_exist_in_static_schema(self.data_tb_name):
            self.create_my_data_tb_in_static_schema()
        extra_counters_list= self.get_extra_counters_in_my_data_tb()
        if extra_counters_list is not None:
            if len(extra_counters_list)>0:
                self.add_extra_cols_to_static_data_tb(extra_counters_list)
        #self.create_left_anti_of_tb(self.data_tb_name)
        #if self.get_number_of_rows_in_tb(self.my_sql_schema_name,"left_anti_" + self.data_tb_name) > 0:
        list_of_cols_names = self.get_sql_columns_names_in_tb(self.static_schema_name, self.data_tb_name)
        sql_str_col_names = ""
        for item in list_of_cols_names:
            sql_str_col_names = sql_str_col_names + "\"" + item + "\","
        sql_str_col_names = sql_str_col_names[:-1]
        sql_str_col_names_with_path = ""
        for item1 in list_of_cols_names:
            sql_str_col_names_with_path = sql_str_col_names_with_path + self.static_schema_name + ".\"" + self.data_tb_name + "\"" + ".\"" + item1 + "\","
        sql_str_col_names_with_path = sql_str_col_names_with_path[:-1]
        sql_str_insert_left_anti_part1 = "INSERT INTO " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ( "+sql_str_col_names+" )  SELECT "
        sql_str_insert_left_anti_part2=sql_str_col_names_with_path+" FROM " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ON CONFLICT DO NOTHING"
        self.Hourly_schema_alch_engine.execute(sql_str_insert_left_anti_part1+sql_str_insert_left_anti_part2)
        return True
    ##################################################################
    def merge_with_static_schema(self):
        try:
            print("start merging package:" + self.data_tb_name )
            self.merge_data_df_to_sql_data_tb()
            self.merge_bookkeeper_df_to_sql_bookkeeper_tb()
        except Exception as e:
            print("merging package:"+self.data_tb_name+" or its bookkeeping records didnot succeed")
            print(e.args[0])
            return False

    #
    # def prepare_sql_multiple_strs_for_create_root_tb_in_static_schema(self):
    #     sql_str_crt_root_tb = "CREATE TABLE \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"" + self.object_name_column + "\" text COLLATE \"pg_catalog\".\"default\" not null)"
    #     sql_str_crt_prim_key = "ALTER TABLE \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\")"
    #
    #     return sql_str_crt_root_tb + ";"  + sql_str_crt_prim_key + ";"
    #
    # def prepare_sql_multiple_strs_for_create_data_tb_in_static_schema(self):
    #     list_of_cols_names_and_types = self.get_sql_columns_names_and_types_in_tb(self.static_schema_name,
    #                                                                               self.data_tb_name)
    #     sql_str_create_data_tb = "CREATE TABLE " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ("
    #     for item in list_of_cols_names_and_types:
    #         sql_str_create_data_tb = sql_str_create_data_tb + "\"" + item[0] + "\"" + " " + item[1] + ","
    #     sql_str_create_data_tb = str(sql_str_create_data_tb[:-1] + ")")
    #     sql_str_crt_data_prim_key = "ALTER TABLE " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"" + self.object_name_column + "\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\")"
    #     sql_str_add_foriegn_key = "ALTER TABLE \"" + self.static_schema_name + "\".\"" + self.data_tb_name + """\"
    #         ADD CONSTRAINT \"FK_""" + self.data_tb_name + "_" + self.root_tb_name + "\" FOREIGN KEY (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\") REFERENCES \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\" (\"" + self.timestamp_column + "\", \"" + self.object_name_column + "\")"
    #     return sql_str_create_data_tb + ";"  + sql_str_crt_data_prim_key + ";"  + sql_str_add_foriegn_key + ";"
    #
    # def prepare_sql_multiple_strs_for_inst_root_tb_in_static_schema(self):
    #     anti_left_tb_name = "left_anti_" + self.root_tb_name
    #     sql_str_create_anti_left = "CREATE TABLE " + self.static_schema_name + ".\"" + anti_left_tb_name + "\" (\"Result Time\" timestamp NOT NULL);"
    #
    #     sql_str_insert_anti_left = "INSERT INTO \"" + self.static_schema_name + "\".\"" + anti_left_tb_name + "\" (\"" + self.timestamp_column + "\") SELECT DISTINCT " + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + "\" FROM " + self.static_schema_name + ".\"" + self.root_tb_name + "\" LEFT JOIN \"" + self.static_schema_name + "\".\"" + self.root_tb_name + """\" ON
    #     """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + "\" = \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + """\"
    #     AND """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.object_name_column + "\" = \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\"" + self.object_name_column + """\"
    #       WHERE \"""" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + "\" IS NULL"
    #
    #     sql_str_insert_left_anti_to_static_root = "INSERT INTO " + self.static_schema_name + ".\"" + self.root_tb_name + "\" ( \"" + self.timestamp_column + "\", \"" + self.object_name_column + """\" ) SELECT
    #            """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + """\",
    #            """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.object_name_column + """\"
    #            FROM """ + self.static_schema_name + ".\"" + self.root_tb_name + "\" INNER JOIN " + self.static_schema_name + ".\"" + "left_anti_" + self.root_tb_name + """\"
    #            ON """ + self.static_schema_name + ".\"" + self.root_tb_name + "\".\"" + self.timestamp_column + "\" = " + self.static_schema_name + ".\"" + "left_anti_" + self.root_tb_name + "\".\"" + self.timestamp_column + """\"
    #            ON CONFLICT DO NOTHING"""
    #     return sql_str_create_anti_left + ";"  + sql_str_insert_anti_left + ";"  + sql_str_insert_left_anti_to_static_root + ";"
    #
    # def prepare_sql_multiple_strs_for_inst_data_tb_in_static_schema(self):
    #     # extra_counters_list = self.get_extra_counters_in_my_data_tb()
    #     # if extra_counters_list is not None:
    #     #     if len(extra_counters_list) > 0:
    #     #         self.add_extra_cols_to_static_data_tb(extra_counters_list)
    #     # self.create_left_anti_of_tb(self.data_tb_name)
    #     # if self.get_number_of_rows_in_tb(self.my_sql_schema_name,"left_anti_" + self.data_tb_name) > 0:
    #     list_of_cols_names = self.get_sql_columns_names_in_tb(self.static_schema_name, self.data_tb_name)
    #     sql_str_col_names = ""
    #     for item in list_of_cols_names:
    #         sql_str_col_names = sql_str_col_names + "\"" + item + "\","
    #     sql_str_col_names = sql_str_col_names[:-1]
    #     sql_str_col_names_with_path = ""
    #     for item1 in list_of_cols_names:
    #         sql_str_col_names_with_path = sql_str_col_names_with_path + self.static_schema_name + ".\"" + self.data_tb_name + "\"" + ".\"" + item1 + "\","
    #     sql_str_col_names_with_path = sql_str_col_names_with_path[:-1]
    #     sql_str_insert_data_tb_part1 = "INSERT INTO " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ( " + sql_str_col_names + " )  SELECT "
    #     sql_str_insert_data_tb_part2 = sql_str_col_names_with_path + " FROM " + self.static_schema_name + ".\"" + self.data_tb_name + "\" ON CONFLICT DO NOTHING"
    #     finalsql_str_insert_data_tb = sql_str_insert_data_tb_part1 + sql_str_insert_data_tb_part2
    #     return finalsql_str_insert_data_tb + ";"
    #
    # def prepare_sql_multiple_strs_for_inst_bookkeeper_tb_in_static_schema(self):
    #     sql_str_insert_my_bookkeeper_to_bookkeeper_schema = "INSERT INTO " + self.bookkeeper_schema + ".\"" + self.bookkeeper_tb_name + "\" ( \"" + self.timestamp_column + """\", \"Entity_Type_SQL\",\"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\" ) SELECT
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"" + self.timestamp_column + """\",
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"Entity_Type_SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"Object_Type_SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"FunctionSubSet Name SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"FunctionSubSet_id\"" + """
    #      FROM """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\"" + """ ON CONFLICT DO NOTHING"""
    #     return sql_str_insert_my_bookkeeper_to_bookkeeper_schema + ";"
    # # def prepare_sql_multiple_strs_for_ins_root_and_data_tb_in_static_schema(self):
    # #     #sql_str_ins_root_tb_data_to_static_root = "insert into \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\" (\"" + self.timestamp_column + "\",\"" + self.object_name_column + "\") select DISTINCT \"" + self.timestamp_column + "\",\"" + self.object_name_column + "\" from \"" + self.my_sql_schema_name + "\".\"" + self.data_tb_name + "\" ON CONFLICT DO NOTHING;"
    #
    # def prepare_sql_multiple_strs_for_crt_bookkeeper_tb_in_static_schema(self):
    #     sql_str_crt_bookkeep_tb = "CREATE TABLE \"" + self.bookkeeper_schema + "\".\"" + self.bookkeeper_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"Entity_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"Object_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet Name SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet_id\" numeric(24) not null);"
    #     sql_str_crt_prim_key = "ALTER TABLE \"" + self.bookkeeper_schema + "\".\"" + self.bookkeeper_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"Entity_Type_SQL\" SET NOT NULL, ALTER COLUMN \"Object_Type_SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet Name SQL\" SET NOT NULL, ALTER COLUMN \", ALTER COLUMN \"FunctionSubSet_id\" SET NOT NULL,\" SET NOT NULL ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"Entity_Type_SQL\", \"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\")"
    #     return sql_str_crt_bookkeep_tb + ";" +sql_str_crt_prim_key + ";"
    #
    # def merge_with_static_schema_v2(self):
    #     final_multi_str_for_merging_to_static_schema="BEGIN; "
    #     #using one transaction instead of separated statements
    #     prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema=""
    #     data_tb_exist_in_static_schema=True
    #     if not self.chk_tb_exist_in_static_schema(self.root_tb_name):
    #         prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema=prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema+self.prepare_sql_multiple_strs_for_create_root_tb_in_static_schema()
    #     if not self.chk_tb_exist_in_static_schema(self.data_tb_name):
    #         data_tb_exist_in_static_schema=False
    #         prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema=prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema+self.prepare_sql_multiple_strs_for_create_data_tb_in_static_schema()
    #
    #     if not self.chk_tb_exist_in_bookkeeper_schema(self.bookkeeper_tb_name):
    #         prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema = prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema + self.prepare_sql_multiple_strs_for_crt_bookkeeper_tb_in_static_schema()
    #     sql_str_add_new_cols=""
    #     if data_tb_exist_in_static_schema==True:
    #         sql_str_add_new_cols=""
    #         extra_counters_list=self.get_extra_counters_in_my_data_tb()
    #         if len(extra_counters_list)>0:
    #             for item in extra_counters_list:
    #                 sql_str_add_new_cols =sql_str_add_new_cols+ " alter table " + self.static_schema_name + ".\"" + self.data_tb_name + "\" add column \"" + item[0] + "\" " + item[1]+";"
    #
    #     if not prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema is "":
    #         final_multi_str_for_merging_to_static_schema=prepare_sql_multi_strs_for_crt_missing_tbs_in_static_schema
    #     final_multi_str_for_merging_to_static_schema=final_multi_str_for_merging_to_static_schema+self.prepare_sql_multiple_strs_for_inst_root_tb_in_static_schema()
    #     final_multi_str_for_merging_to_static_schema=final_multi_str_for_merging_to_static_schema+sql_str_add_new_cols
    #     final_multi_str_for_merging_to_static_schema=final_multi_str_for_merging_to_static_schema+self.prepare_sql_multiple_strs_for_inst_data_tb_in_static_schema()
    #     final_multi_str_for_merging_to_static_schema=final_multi_str_for_merging_to_static_schema+self.prepare_sql_multiple_strs_for_inst_bookkeeper_tb_in_static_schema()
    #     final_multi_str_for_merging_to_static_schema=final_multi_str_for_merging_to_static_schema+" COMMIT;"
    #     self.Hourly_schema_alch_engine.execute(final_multi_str_for_merging_to_static_schema)
    #     return True
    #
    # #############################################################
    # def merge_my_bookkeeper_tb_to_static_bookkeeper(self):
    #     #columns_list = [self.timestamp_column,"Entity_Type_SQL", "Object_Type_SQL","FunctionSubSet Name SQL"]
    #     if not self.chk_tb_exist_in_bookkeeper_schema(self.bookkeeper_tb_name):
    #         sql_str_crt_bookkeep_tb = "CREATE TABLE \""+self.bookkeeper_schema+"\".\"" + self.bookkeeper_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) not null,  \"Entity_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"Object_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet Name SQL\" text COLLATE \"pg_catalog\".\"default\" not null,  \"FunctionSubSet_id\" numeric(24) not null);"
    #         self.Hourly_schema_alch_engine.execute(sql_str_crt_bookkeep_tb)
    #         sql_str_crt_prim_key = "ALTER TABLE \""+self.bookkeeper_schema+"\".\"" + self.bookkeeper_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"Entity_Type_SQL\" SET NOT NULL, ALTER COLUMN \"Object_Type_SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet Name SQL\" SET NOT NULL, ALTER COLUMN \", ALTER COLUMN \"FunctionSubSet_id\" SET NOT NULL,\" SET NOT NULL ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"Entity_Type_SQL\", \"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\");"
    #         self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)
    #     #sql_str_ins_timestamps_to_bookkeep = "insert into \"" + self.bookkeeper_tb_name + "\" (\"" + self.timestamp_column + "\") select DISTINCT \"" + self.timestamp_column + "\" from public.\"" + self.data_table_name + "\";"
    #     sql_str_merge_timestamps_to_bookkeeper="INSERT INTO "+self.bookkeeper_tb_name+" CA USING (SELECT CustomerId, TransactionValue"""
    #
    #     sql_str_insert_my_bookkeeper_to_bookkeeper_schema = "INSERT INTO " + self.bookkeeper_schema + ".\"" + self.bookkeeper_tb_name + "\" ( \"" + self.timestamp_column + """\", \"Entity_Type_SQL\",\"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\" ) SELECT
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"" + self.timestamp_column + """\",
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"Entity_Type_SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"Object_Type_SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"FunctionSubSet Name SQL\"" + """,
    #      """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\".\"FunctionSubSet_id\"" + """
    #      FROM """ + self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\"" + """ ON CONFLICT DO NOTHING"""
    #     self.Hourly_schema_alch_engine.execute(sql_str_insert_my_bookkeeper_to_bookkeeper_schema)
    #     return True
    ##############################################################################################
    # def export_bookkeeper_tb_to_extern_db(self):
    #     # dimensions = [self.timestamp_column, self.object_name_column]
    #     if not self.chk_tb_exist_in_static_schema(self.bookkeeper_tb_name):
    #         self.merge_my_root_to_static_schema()
    #
    #     else:
    #         root_data_need_to_append_to_extern_db = self.get_timestamps_to_be_merged_with_extern_bookkeeper()
    #         if not root_data_need_to_append_to_extern_db is None:
    #             self.merge_partial_root_data_to_external_db(root_data_need_to_append_to_extern_db)
    ################################################################
    # def export_my_root_tb_to_extern_db(self, db_name):
    #     #dimensions = [self.timestamp_column, self.object_name_column]
    #     if not self.chk_tb_exist_in_static_schema(self.root_tb_name):
    #         self.create_my_root_in_static_schema()
    #
    #     else:
    #         root_data_need_to_append_to_extern_db=self.get_timestamps_to_be_merged_with_extern_bookkeeper(db_name)
    #         if not root_data_need_to_append_to_extern_db  is None:
    #             self.merge_partial_root_data_to_external_db(root_data_need_to_append_to_extern_db)
    ################################################################
    # def export_my_data_tb_to_extern_db(self, db_name):
    #     # dimensions = [self.timestamp_column, self.object_name_column]
    #     if not self.chk_tb_exist_in_static_schema(self.data_tb_name):
    #         self.create_my_data_tb_in_static_schema()
    #
    #     else:
    #         if not self.check_my_data_exist_in_extern_db(self, db_name):
    #             self.merge_my_data_to_external_db(db_name)
    ################################################################
    # def get_timestamps_to_be_merged_with_extern_bookkeeper(self):
    #     list_of_external_timestamps=self.get_timestamps_in_extern_bookkeeper()
    #     list_of_internal_timestamps=self.get_timestamps_in_intern_bookkeeper()
    #     timestamps_need_to_be_exported=[]
    #     for internal_timestamp in list_of_internal_timestamps:
    #         if internal_timestamp in list_of_external_timestamps:
    #             timestamps_need_to_be_exported.append(internal_timestamp)
    #     if len(timestamps_need_to_be_exported)>0:
    #         return timestamps_need_to_be_exported
    #     else:
    #         return None
    #########################################################################
    # def get_timestamps_in_extern_bookkeeper(self):
    #     sql_str_get_bookkeeper_timestamps="SELECT DISTINCT \"Result Time\" FROM public.\""+self.bookkeeper_tb_name+"\" WHERE \"Entity_Type_SQL\"='"+self.entity_type+"' and \"Object_Type_SQL\"='"+self.object_type+"' and \"FunctionSubSet_id\"="+str(self.func_subset_id)
    #     q=self.external_engine.execute(sql_str_get_bookkeeper_timestamps)
    #     query_fetched_data=q.fetchall()
    #     list_of_timestamps=[list(item)[0] for item in query_fetched_data]
    #     return list_of_timestamps
    #############################################################################
    # def get_timestamps_in_intern_bookkeeper(self):
    #     sql_str_get_bookkeeper_timestamps="SELECT DISTINCT \"Result Time\" FROM "+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\" WHERE \"Entity_Type_SQL\"='"+self.entity_type+"' and \"Object_Type_SQL\"='"+self.object_type+"' and \"FunctionSubSet_id\"="+str(self.func_subset_id)
    #     q=self.Hourly_schema_alch_engine.execute(sql_str_get_bookkeeper_timestamps)
    #     query_fetched_data=q.fetchall()
    #     list_of_timestamps=[list(item)[0] for item in query_fetched_data]
    #     return list_of_timestamps
    ################################################################
    # def chk_sql_db_exist(db_name):
    #
    #     sql_line_to_execute="SELECT datname FROM pg_catalog.pg_database;"
    #     #print(sql_line_to_execute)
    #     with self.open_db_connection() as cursor:
    #         cursor.execute(sql_line_to_execute)
    #         list_of_dbs=cursor.fetchall()
    #         list_of_dbs=[list(item)[0] for item in list_of_dbs]
    #         print(list_of_dbs)
    #         if db_name in list_of_dbs:
    #             return True
    #         else:
    #             return False
###########################################
    # def create_my_bookkeeper_tb(self): # this table contains the list of hours and dates that exist in the other big data and root tables
    #      #columns_list = [self.timestamp_column,"Entity_Type_SQL", "Object_Type_SQL","FunctionSubSet Name SQL"]
    #      if not self.chk_tb_exist_in_my_schema(self.bookkeeper_tb_name):
    #          #self.Hourly_schema_alch_engine.execute("DROP TABLE \"" + self.my_sql_schema_name + "\".\"" + self.bookkeeper_tb_name + "\"")
    #          sql_str_crt_bookkeep_tb = "CREATE TABLE \""+self.static_schema_name + "\".\"" + self.bookkeeper_tb_name + "\" (  \"" + self.timestamp_column + "\" timestamp(6) null,  \"Entity_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" null,  \"Object_Type_SQL\" text COLLATE \"pg_catalog\".\"default\" null,  \"FunctionSubSet Name SQL\" text COLLATE \"pg_catalog\".\"default\" null,  \"FunctionSubSet_id\" numeric(24) null);"
    #          self.Hourly_schema_alch_engine.execute(sql_str_crt_bookkeep_tb)
    #          sql_str_ins_timestamps_to_bookkeep = "insert into \""+ self.static_schema_name + "\".\"" + self.bookkeeper_tb_name + "\" (\"" + self.timestamp_column + "\") select DISTINCT \"" + self.timestamp_column + "\" from " + self.static_schema_name + ".\"" + self.root_tb_name + "\";"
    #          self.Hourly_schema_alch_engine.execute(sql_str_ins_timestamps_to_bookkeep)
    #          sql_str_insert_func_subset_info="UPDATE "+self.static_schema_name + ".\"" + self.bookkeeper_tb_name + "\" SET \"Entity_Type_SQL\"=\'" + self.entity_type + "\', \"Object_Type_SQL\"=\'" + self.object_type + "\', \"FunctionSubSet Name SQL\"=\'" + self.func_subset_name + "\', \"FunctionSubSet_id\"=\'" + str(self.func_subset_id) + "\'"
    #          self.Hourly_schema_alch_engine.execute(sql_str_insert_func_subset_info)
    #          sql_str_crt_prim_key = "ALTER TABLE \""+self.static_schema_name + "\".\"" + self.bookkeeper_tb_name + "\" ALTER COLUMN \"" + self.timestamp_column + "\" SET NOT NULL, ALTER COLUMN \"Entity_Type_SQL\" SET NOT NULL, ALTER COLUMN \"Object_Type_SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet Name SQL\" SET NOT NULL, ALTER COLUMN \"FunctionSubSet_id\" SET NOT NULL, ADD PRIMARY KEY (\"" + self.timestamp_column + "\", \"Entity_Type_SQL\", \"Object_Type_SQL\",\"FunctionSubSet Name SQL\",\"FunctionSubSet_id\");"
    #          self.Hourly_schema_alch_engine.execute(sql_str_crt_prim_key)
    # #
    #     ##############################################################
    ######################################################
    # def create_left_anti_bookkeeper(self):
    #     sql_str_create_empty_diff_tb="CREATE TABLE "+self.my_sql_schema_name+".\"diff_subset_bookkeeper\" (\"Result Time\" timestamp NOT NULL);"
    #     self.Hourly_schema_alch_engine.execute(sql_str_create_empty_diff_tb)
    #     sql_str_get_timestamps_not_exist_in_static="INSERT INTO \""+self.my_sql_schema_name+"\".diff_subset_bookkeeper (\"Result Time\") SELECT "+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\".\"Result Time\" FROM "+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\" LEFT JOIN \""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"""\" ON
    #     """+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\".\"Result Time\" = \""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"""\".\"Result Time\"
    #     AND """+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\".\"Entity_Type_SQL\" = \""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"""\".\"Entity_Type_SQL\"
    #     AND """+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\".\"Object_Type_SQL\" = \""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"""\".\"Object_Type_SQL\"
    #     AND """+self.my_sql_schema_name+".\""+self.bookkeeper_tb_name+"\".\"FunctionSubset_id\" = \""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"""\".\"FunctionSubset_id\"
    #     WHERE \""""+self.static_schema_name+"\".\""+self.bookkeeper_tb_name+"\".\"Result Time\" IS NULL;"
    #     self.Hourly_schema_alch_engine.execute(sql_str_get_timestamps_not_exist_in_static)

    ######################################################
    # def create_left_anti_root(self):
    #     anti_left_tb_name="left_anti_"+self.root_tb_name
    #     sql_str_create_anti_left = "CREATE TABLE " + self.my_sql_schema_name + ".\""+anti_left_tb_name+"\" (\"Result Time\" timestamp NOT NULL);"
    #     self.Hourly_schema_alch_engine.execute(sql_str_create_anti_left)
    #     sql_str_create_anti_left = "INSERT INTO \"" + self.my_sql_schema_name + "\".\""+anti_left_tb_name+"\" (\""+self.timestamp_column+"\") SELECT DISTINCT " + self.my_sql_schema_name + ".\"" + self.root_tb_name + "\".\""+self.timestamp_column+"\" FROM " + self.my_sql_schema_name + ".\"" + self.root_tb_name + "\" LEFT JOIN \"" + self.static_schema_name + "\".\"" + self.root_tb_name + """\" ON
    #     """ + self.my_sql_schema_name + ".\"" + self.root_tb_name + "\".\""+self.timestamp_column+"\" = \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\""+self.timestamp_column+"""\"
    #     AND """ + self.my_sql_schema_name + ".\"" + self.root_tb_name + "\".\""+self.object_name_column+"\" = \"" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\""+self.object_name_column+"""\"
    #       WHERE \"""" + self.static_schema_name + "\".\"" + self.root_tb_name + "\".\""+self.timestamp_column+"\" IS NULL;"
    #     self.Hourly_schema_alch_engine.execute(sql_str_create_anti_left)
    #########################################################
    # def get_my_data_tb_name(self):
    #     eng =self.my_alchemy_engine
    #     q = eng.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public'  AND table_type='BASE TABLE';")
    #     list_of_tables=[item[0] for item in q.fetchall()]
    #     for table_name in list_of_tables:
    #         if not "@root"==table_name.split("@")[2]:
    #             return table_name
    #######################################################
    # def chk_table_exist_in_database(self, tb_name):
    #     eng = self.my_alchemy_engine
    #     q = eng.execute(
    #         "SELECT table_name FROM information_schema.tables WHERE table_schema='public'  AND table_type='BASE TABLE';")
    #     list_of_tables = [item[0] for item in q.fetchall()]
    #     if tb_name in list_of_tables:
    #         return True
    #     else:
    #         return False


