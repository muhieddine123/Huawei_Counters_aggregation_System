
from function_subset import *
from postgres_worker_v2 import *



def oop_one_process_multiple_serial_pm_packages(list_of_arg_sets):
    counter=0
    for args_set in list_of_arg_sets:
        counter=counter+1
        print("new package processing number "+str(counter)+" from a list of "+str(len(list_of_arg_sets))+" packages")
        oop_launch_one_process_one_pm(*args_set)
    return
def oop_launch_one_process_one_pm(entity_type, object_type, func_subset_id, paths_to_pm_files,header_of_pm_file, sql_host_name, sql_user,
                                  sql_password):
    #ts = time.time()
    #st = datetime.fromtimestamp(ts).strftime('%Y%m%d%H%M%S')
    #tempo_schema_name = "tempo_" + str(st) + "_" + str(randint(100000, 1000000))
    new_subset = function_subset(entity_type, object_type, func_subset_id,header_of_pm_file)
    if new_subset.import_multiple_pm_file(paths_to_pm_files):
        new_subset.digest_my_data()
        postgres_worker1 = postgres_worker_v2(sql_host_name, sql_user, sql_password)
        if postgres_worker1.init_with_func_subset(new_subset):
            postgres_worker1.merge_with_static_schema()
            postgres_worker1.dispose_connections()
            del postgres_worker1

        else:
            del postgres_worker1
    return