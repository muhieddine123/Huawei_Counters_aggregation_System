import os
from contextlib import contextmanager
import pandas as pd
import glob
import pyodbc
import psycopg2
import numpy as np
from datetime import datetime
import time
import sys
from random import randint
import sqlalchemy
from sqlalchemy.orm import sessionmaker, scoped_session
import webbrowser
import pymssql
import _mssql
import re
import pyftpdlib
import win32com.client
from win32com.client import Dispatch
import timeit
import pypyodbc
import csv
from glob import iglob
import shutil
from sqlalchemy import create_engine
import psycopg2
import io





@contextmanager
def open_db_connection(conn_str, commit=False):
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
    try:
        yield cursor
    except psycopg2.DatabaseError as err:
        print(err.args)
        # cursor.execute("ROLLBACK")
        raise err

    finally:
        connection.close()
#########################################################
def sql_str_crt_conn(host_name,db_name,user,password):
    if db_name is None:
        db_name="postgres"
    return "host='"+host_name+"' dbname='"+db_name+"' user='"+user+"' password='"+password+"'"
#------------------------------------------------------
def chk_sql_db_exist(db_name):

    sql_line_to_execute="SELECT datname FROM pg_catalog.pg_database;"
    #print(sql_line_to_execute)
    with open_db_connection() as cursor:
        cursor.execute(sql_line_to_execute)
        list_of_dbs=cursor.fetchall()
        list_of_dbs=[list(item)[0] for item in list_of_dbs]
        print(list_of_dbs)
        if db_name in list_of_dbs:
            return True
        else:
            return False
#------------------------------------------------------
def crt_partial_sql_tb(db_name,src_tb_name,trg_tb_name,conn_str,cols_list):
    sql_str_cols="dbo."+",dbo.".join(cols_list)
    sql_str_crt_partial="SELECT "+sql_str_cols+" into ["+db_name+"].dbo.["+trg_tb_name+"] FROM ["+db_name+"].[dbo].["+src_tb_name+"]'"
    with open_db_connection(conn_str) as cursor:
            cursor.execute(sql_str_crt_partial)
    return True
#---------------------------------------------------------
def sql_str_add_foreign_key(db_name,source_tb,target_tb,source_cols_list,target_cols_list):
    source_cols_str="["+"], [".join(source_cols_list)+"]"
    target_cols_str="["+"], [".join(target_cols_list)+"]"
    foreign_key_str="ALTER TABLE ["+db_name+"].[dbo].["+target_tb+"] ADD CONSTRAINT ["+source_tb+"_"+target_tb+"""_FK] FOREIGN KEY 
    ("""+target_cols_str+") REFERENCES ["+db_name+"].[dbo].["+source_tb+"]  ("+source_cols_str+")"
    return foreign_key_str
#------------------------------------------------------
def sql_str_merge_source_tb_to_target_tb(source_db_name,target_db_name,conn_str,source_tb,target_tb,dimensions,merged_cols):
    #dimensions = get_tb_dimensions(source_tb.split("@")[0], source_tb.split("@")[1])
    sql_str_merged_cols = ",".join(merged_cols)
    sql_str_on_clause = " AND ".join(list(map([lambda x: "SOURCE." + x + " = TARGET." + x], dimensions)))
    sql_str_cols_update = ",".join(list(map([lambda x: "TARGET." + x + "=SOURCE." + x], dimensions)))
    sql_str_merge = "MERGE INTO [" + target_db_name + "].dbo.[" + target_tb+ """] AS TARGET USING ("
    SELECT DISTINCT""" + dimensions + "	FROM [" + source_db_name + "].dbo.[" + source_tb + "]) AS SOURCE ON " + sql_str_on_clause + """WHEN MATCHED THEN
    UPDATE SET """ + sql_str_cols_update + " WHEN NOT MATCHED THEN INSERT (" + sql_str_merged_cols + ") VALUES(" + sql_str_merged_cols + ");"
    with open_db_connection(conn_str) as cursor:
        cursor.execute(sql_str_merge)
    return True
#------------------------------------------------------
def crt_tb_sql_str(db_name,tb_name,cols_list,types_list,not_null_list):
    cols_str=""
    for index,col in enumerate(cols_list):
        if col in not_null_list:
            cols_str=cols_str+"["+col+"] "+types_list[index]+"  NOT NULL,"
        else:
            cols_str=cols_str+"["+col+"] "+types_list[index]+"  NULL,"
    cols_str=cols_str[:-1]
    crt_tb_str="IF OBJECT_ID(N'["+db_name+"].dbo.["+tb_name+"""', 'U') IS NULL BEGIN CREATE TABLE 
    ["""+db_name+"].dbo.["+tb_name+"] ("+cols_str+") END"
    return crt_tb_str
#------------------------------------------------------
def create_sql_db(conn_str,db_name):
    with open('Create DB-PostgresSQL.txt', 'r') as myfile:
        Create_DB_Sql_String = myfile.read().replace("Temporary_2452", db_name)
        sql_lines = Create_DB_Sql_String.split('\n')
    with open_db_connection(conn_str,commit=True) as cursor:
        for sql_line in sql_lines:
            cursor.execute(sql_line)
    if chk_sql_db_exist(conn_str,db_name):
        return True
    else:
        return False
#------------------------------------------------------
def delete_sql_db(conn_str,tempo_db_name):
    with open('Delete DB.txt', 'r') as myfile:
        Delete_DB_Sql_String = myfile.read().replace("temporary_2452", tempo_db_name)
        sql_lines = Delete_DB_Sql_String.split('\r\n')
    with open_db_connection(conn_str) as cursor:
        for sql_line in sql_lines:
            #print(sql_line)
            cursor.execute(sql_line)

    return True
#------------------------------------------------------
def insert_df_to_sql(input_df, table_name, tempo_db_name, sql_host_name, sql_user, sql_password):
    engine = create_engine("postgresql+psycopg2://"+sql_user+":"+sql_password+"@"+sql_host_name+":5432/"+tempo_db_name)
    input_df.head(0).to_sql(table_name, engine, if_exists='replace', index=False)
    conn = engine.raw_connection()
    cur = conn.cursor()
    output = io.StringIO()
    input_df.to_csv(output, sep='|', header=False, index=False)
    output.seek(0)
    contents = output.getvalue()
    cur.copy_from(output, "\""+table_name+"\"",sep='|',  null="")  # null values become ''
    conn.commit()
    #cols_sql_types_list=get_sql_columns_types(list(input_df.dtypes))
    #index_cols=list(input_df.index.values)
    #not_null_list = [column_name for column_name in input_df.columns if not 'float' in str(input_df[column_name].dtype)]
    #sql_final_string =crt_tb_sql_str(tempo_db_name,table_name,input_df.columns,cols_sql_types_list,index_cols)
    #with open_db_connection(conn_str) as cursor:
    #   cursor.execute(sql_final_string)
    return True
#------------------------------------------------------
def get_sql_columns_types(list_of_df_types):
    types_dictionary={'float64':'numeric(24)','datetime64[ns]':'timestamp','object':'varchar(500)','float32':'numeric(24)'}
    sql_types_list=[types_dictionary[str(df_type)] for df_type in list_of_df_types]
    return sql_types_list


def open_db_connection_postgresql(conn_str):
    try:
        connection =psycopg2.connect(conn_str)
    except psycopg2.DatabaseError as err:
        print("unable to connect to database")
        print(err.args)
        #cursor.execute("ROLLBACK")
        raise err
    cursor = connection.cursor()
    try:
        yield cursor
    except psycopg2.DatabaseError as err:
        print(err.args)
        #cursor.execute("ROLLBACK")
        raise err

    finally:
        connection.close()

#####################################################################################
def get_cols_in_sql_tb(conn_str, db_type, tb_name, db_name):
    sql_str_get_cols="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_CATALOG='"+db_name+"' AND TABLE_NAME='"+tb_name+"' "
    sql_str_conn=conn_str.replace("master",db_name)
    with open_db_connection(sql_str_conn,db_type) as cursor:
            cursor.execute(sql_str_get_cols)
            sql_cols=list(cursor.fetchall())
    return sql_cols

#------------------------------------------------------
def get_tbs_in_sql_db(conn_str, db_type, db_name):
    sql_str_get_tbs="SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_CATALOG='"+db_name+"' AND TABLE_TYPE='BASE TABLE'"
    sql_str_conn=conn_str.replace("master",db_name)
    with open_db_connection(sql_str_conn,db_type) as cursor:
            cursor.execute(sql_str_get_tbs)
            sql_tbs=list(cursor.fetchall())
    return sql_tbs