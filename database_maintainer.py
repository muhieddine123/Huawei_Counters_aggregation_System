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

class database_maintainer:
    def __init__(self, sql_host_name, sql_user, sql_password):