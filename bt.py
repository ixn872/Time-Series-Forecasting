import os 
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import pandas as pd
import numpy as np
from datetime import datetime, date,timedelta
import matplotlib.pyplot as plt
import seaborn as sns
import pymssql
from matplotlib import pylab as plt
import matplotlib.dates as mdates

from pandas.plotting import register_matplotlib_converters
register_matplotlib_converters()
import collections
import tensorflow.compat.v2 as tf

from tensorflow_probability import distributions as tfd
from tensorflow_probability import sts
import tensorflow_probability as tfp

import matplotlib as mpl

tf.enable_v2_behavior()


#Creating a connection
connection={
       'host': 'database-3.c4lzq2vixwra.us-west-2.rds.amazonaws.com',
    'username': 'admin',
    'password': '1221997Nn.',
    'db': 'temp_data' 
 }


con=pymssql.connect(connection['host'],connection['username'],connection['password'],connection['db'])


select_statement="""
Select * from dbo.results2
"""
df = pd.read_sql(select_statement, con)


num_forecast_steps=30
#num=num of forecasting steps in days,demand_training_data,demand_dates,demand,demand_loc,demand_fmt
def preprocess(df): 
    #df['Time'] = df['Date'].apply(lambda x: pd.to_datetime(str(x), format='%Y%m%d'))
    #df['day_of_month'] = df['Time'].dt.day
    #df['month'] = df['Time'].dt.month
    #df['day_of_week'] = df['Time'].dt.dayofweek
    #df['daysinmonth'] = df['Time'].dt.daysinmonth
    #df['Time']= df['Time'].astype(np.datetime64)
    #df['Visits'] = df['Visits'].astype(np.float32)
    #df=df.reset_index()
    demand_loc = mdates.WeekdayLocator(byweekday=mdates.WE)
    demand_fmt = mdates.DateFormatter('%a %b %d')
    L=['2016-08-01T00','2016-08-02T00','2016-08-03T00','2016-08-04T00','2016-08-06T00','2016-08-07T00','2016-08-09T00','2016-08-12T00','2016-08-13T00','2016-08-15T00','2016-08-16T00','2016-08-18T00','2016-08-20T00','2016-08-23T00','2016-08-25T00','2016-08-26T00','2016-08-30T00','2016-08-31T00','2016-09-01T00','2016-09-03T00','2016-09-04T00','2016-09-05T00','2016-09-09T00','2016-09-10T00','2016-09-11T00','2016-09-12T00','2016-09-16T00','2016-09-17T00','2016-09-18T00','2016-09-20T00','2016-09-21T00','2016-09-24T00','2016-09-25T00','2016-09-30T00','2016-10-01T00','2016-10-07T00','2016-10-08T00','2016-10-09T00','2016-10-11T00','2016-10-12T00','2016-10-13T00','2016-10-15T00','2016-10-16T00','2016-10-18T00','2016-10-19T00','2016-10-21T00','2016-10-22T00','2016-10-24T00','2016-10-25T00','2016-10-26T00','2016-10-27T00','2016-10-28T00','2016-10-30T00','2016-10-31T00','2016-11-01T00','2016-11-02T00','2016-11-04T00','2016-11-05T00','2016-11-06T00','2016-11-08T00','2016-11-14T00','2016-11-15T00','2016-11-16T00','2016-11-17T00','2016-11-19T00','2016-11-20T00','2016-11-21T00','2016-11-22T00','2016-11-23T00','2016-11-24T00','2016-11-26T00','2016-11-28T00','2016-11-30T00','2016-12-01T00','2016-12-03T00','2016-12-04T00','2016-12-05T00','2016-12-06T00','2016-12-08T00','2016-12-09T00','2016-12-10T00','2016-12-11T00','2016-12-13T00','2016-12-15T00','2016-12-16T00','2016-12-18T00','2016-12-19T00','2016-12-20T00','2016-12-21T00','2016-12-22T00','2016-12-23T00','2016-12-24T00','2016-12-25T00','2016-12-28T00','2016-12-29T00','2016-12-30T00','2016-12-31T00','2017-01-01T00','2017-01-02T00','2017-01-03T00','2017-01-04T00','2017-01-05T00','2017-01-06T00','2017-01-07T00','2017-01-08T00','2017-01-09T00','2017-01-11T00','2017-01-12T00','2017-01-14T00','2017-01-15T00','2017-01-16T00','2017-01-17T00','2017-01-20T00','2017-01-21T00','2017-01-22T00','2017-01-24T00','2017-01-26T00','2017-01-27T00','2017-01-28T00','2017-01-29T00','2017-01-31T00','2017-02-01T00','2017-02-03T00','2017-02-05T00','2017-02-08T00','2017-02-09T00','2017-02-11T00','2017-02-12T00','2017-02-14T00','2017-02-15T00','2017-02-16T00','2017-02-18T00','2017-02-19T00','2017-02-20T00','2017-02-21T00','2017-02-22T00','2017-02-24T00','2017-02-26T00','2017-02-27T00','2017-02-28T00','2017-03-03T00','2017-03-04T00','2017-03-07T00','2017-03-11T00','2017-03-13T00','2017-03-14T00','2017-03-15T00','2017-03-16T00','2017-03-19T00','2017-03-20T00','2017-03-21T00','2017-03-24T00','2017-03-25T00','2017-03-28T00','2017-03-31T00','2017-04-02T00','2017-04-03T00','2017-04-05T00','2017-04-06T00','2017-04-08T00','2017-04-09T00','2017-04-12T00','2017-04-14T00','2017-04-16T00','2017-04-17T00','2017-04-18T00','2017-04-19T00','2017-04-20T00','2017-04-21T00','2017-04-22T00','2017-04-23T00','2017-04-24T00','2017-04-27T00','2017-04-28T00','2017-04-29T00','2017-04-30T00','2017-05-01T00','2017-05-02T00','2017-05-03T00','2017-05-04T00','2017-05-05T00','2017-05-06T00','2017-05-07T00','2017-05-12T00','2017-05-13T00','2017-05-14T00','2017-05-15T00','2017-05-17T00','2017-05-18T00','2017-05-21T00','2017-05-22T00','2017-05-24T00','2017-05-25T00','2017-05-27T00','2017-05-29T00','2017-05-30T00','2017-05-31T00','2017-06-02T00','2017-06-03T00','2017-06-04T00','2017-06-05T00','2017-06-06T00','2017-06-07T00','2017-06-09T00','2017-06-11T00','2017-06-12T00','2017-06-13T00','2017-06-14T00','2017-06-15T00','2017-06-16T00','2017-06-17T00','2017-06-18T00','2017-06-20T00','2017-06-21T00','2017-06-22T00','2017-06-26T00','2017-06-27T00','2017-06-28T00','2017-06-30T00','2017-07-01T00','2017-07-02T00','2017-07-03T00','2017-07-04T00','2017-07-05T00','2017-07-06T00','2017-07-08T00','2017-07-10T00','2017-07-12T00','2017-07-14T00','2017-07-15T00','2017-07-16T00','2017-07-17T00','2017-07-18T00','2017-07-19T00','2017-07-21T00','2017-07-23T00','2017-07-27T00','2017-07-28T00','2017-07-29T00','2017-07-30T00','2017-07-31T00']
    demand_dates = np.array(L,dtype='datetime64[h]')
    demand = np.array("61.0,56.0,96.0,94.0,46.0,45.0,76.0,75.0,43.0,98.0,80.0,67.0,58.0,76.0,81.0,57.0,71.0,92.0,65.0,60.0,54.0,45.0,61.0,46.0,45.0,76.0,79.0,46.0,42.0,83.0,68.0,45.0,54.0,64.0,49.0,89.0,63.0,52.0,70.0,93.0,79.0,72.0,84.0,93.0,100.0,99.0,94.0,115.0,107.0,93.0,109.0,99.0,89.0,94.0,104.0,120.0,108.0,85.0,78.0,114.0,134.0,132.0,129.0,106.0,80.0,81.0,126.0,109.0,96.0,110.0,99.0,122.0,131.0,106.0,82.0,91.0,121.0,73.0,67.0,64.0,59.0,57.0,83.0,82.0,65.0,70.0,85.0,79.0,76.0,57.0,50.0,36.0,38.0,61.0,38.0,32.0,42.0,43.0,44.0,68.0,57.0,80.0,57.0,33.0,54.0,71.0,76.0,69.0,43.0,46.0,51.0,68.0,50.0,48.0,41.0,97.0,65.0,53.0,46.0,56.0,66.0,71.0,61.0,40.0,69.0,81.0,54.0,48.0,71.0,61.0,55.0,48.0,66.0,68.0,86.0,64.0,62.0,57.0,53.0,69.0,51.0,59.0,78.0,45.0,89.0,82.0,61.0,73.0,33.0,59.0,81.0,58.0,53.0,73.0,54.0,46.0,71.0,92.0,91.0,65.0,63.0,52.0,43.0,36.0,61.0,60.0,59.0,74.0,62.0,57.0,40.0,49.0,81.0,79.0,44.0,53.0,83.0,30.0,69.0,85.0,45.0,38.0,48.0,51.0,32.0,45.0,69.0,85.0,56.0,48.0,80.0,78.0,55.0,40.0,48.0,43.0,67.0,56.0,30.0,41.0,77.0,71.0,66.0,54.0,52.0,71.0,43.0,61.0,65.0,59.0,30.0,47.0,51.0,54.0,61.0,54.0,79.0,70.0,53.0,66.0,52.0,59.0,46.0,86.0,72.0,41.0,70.0,72.0,71.0,56.0,50.0,77.0,93.0,73.0,76.0,52.0,81.0,71.0,51.0,52.0,80.0".split(",")).astype(np.float32)
    temperature = np.array("18.050,17.200,16.450,16.650,16.400,17.950,19.700,20.600,22.350,23.700,24.800,25.900,25.300,23.650,20.700,19.150,22.650,22.650,22.400,22.150,22.050,22.150,21.000,19.500,18.450,17.250,16.300,15.700,15.500,15.450,15.650,16.500,18.100,17.800,19.100,19.850,20.300,21.050,22.800,21.650,20.150,19.300,18.750,17.900,17.350,16.850,16.350,15.700,14.950,14.500,14.350,14.450,14.600,14.600,14.700,15.450,16.700,18.300,20.100,20.650,19.450,20.200,20.250,20.050,20.250,20.950,21.900,21.000,19.900,19.250,17.300,16.300,15.800,15.000,14.400,14.050,13.650,13.500,14.150,15.300,14.800,17.050,18.350,19.450,18.550,18.650,18.850,19.800,19.650,18.900,19.500,17.700,17.350,16.950,16.400,15.950,14.900,14.250,13.050,12.000,11.500,10.950,12.300,16.100,17.100,19.600,21.100,22.600,24.350,25.250,25.750,20.350,15.550,18.300,19.400,19.250,18.550,17.700,16.750,15.800,14.900,14.050,14.100,13.500,13.000,12.950,13.300,13.900,15.400,16.750,17.300,17.750,18.400,18.500,18.800,19.450,18.750,18.400,16.950,15.800,15.350,15.250,15.150,14.900,14.500,14.600,14.400,14.150,14.300,14.500,14.950,15.550,15.800,15.550,16.450,17.500,17.700,18.750,19.600,19.900,19.350,19.550,17.900,16.400,15.550,14.900,14.400,13.950,13.300,12.950,12.650,12.450,12.350,12.150,11.950,14.150,15.850,17.750,19.450,22.150,23.850,23.450,24.950,26.850,26.100,25.150,23.250,21.300,19.850,18.900,18.250,17.450,17.100,16.400,15.550,15.050,14.400,14.550,15.150,17.050,18.850,20.850,24.250,27.700,28.400,30.750,30.700,32.200,31.750,30.650,29.750,28.850,27.850,25.950,24.700,24.850,24.050,23.850,23.500,22.950,22.200,21.750,22.350,24.050,25.150,27.100,28.050,29.750,31.250,31.900,32.950,33.150,33.950,33.850,33.250,32.500,31.500,28.300,23.900,22.900,22.300,21.250,20.500,19.850,18.850,18.300,18.100,18.200,18.150,18.000,17.700,18.250,19.700,20.750,21.800,21.500,21.600,20.800,19.400,18.400,17.900,17.600,17.550,17.550,17.650,17.400,17.150,16.800,17.000,16.900,17.200,17.350,17.650,17.800,18.400,19.300,20.200,21.050,21.700,21.800,21.800,21.500,20.000,19.300,18.200,18.100,17.700,16.950,16.250,15.600,15.500,15.300,15.450,15.500,15.750,17.350,19.150,21.650,24.700,25.200,24.300,26.900,28.100,29.450,29.850,29.450,26.350,27.050,25.700,25.150,23.850,22.450,21.450,20.850,20.700,21.300,21.550,20.800,22.300,26.300,32.600,35.150,36.800,38.150,39.950,40.850,41.250,42.300,41.950,41.350,40.600,36.350,36.150,34.600,34.050,35.400,36.300,35.550,33.700,30.650,29.450,29.500,31.000,33.300,35.700,36.650,37.650,39.400,40.600,40.250,37.550,37.300,35.400,32.750,31.200,29.600,28.350,27.500,28.750,28.900,29.900,28.700,28.650,28.150,28.250,27.650,27.800,29.450,32.500,35.750,38.850,39.900,41.100,41.800,42.750,39.900,39.750,40.800,37.950,31.250,34.600,30.250,28.500,27.900,27.950,27.300,26.900,26.800,26.050,26.100,27.700,31.850,34.850,36.350,38.000,39.200,41.050,41.600,42.350,43.100,33.500,30.700,29.100,26.400,23.900,24.700,24.350,23.450,23.450,23.550,23.050,22.200,22.100,22.000,21.900,22.050,22.550,22.850,22.450,22.250,22.650,22.350,21.900,21.000,20.950,20.200,19.700,19.400,19.200,18.650,18.150,18.150,17.650,17.350,17.150,16.800,16.750,16.400,16.500,16.700,17.300,17.750,19.200,20.400,20.900,21.450,22.000,22.100,21.600,21.700,20.500,19.850,19.750,19.500,19.200,19.800,19.500,19.200,19.200,19.150,19.050,19.100,19.250,19.550,20.200,20.550,21.450,23.150,23.500,23.400,23.500,23.300,22.850,22.250,20.950,19.750,19.450,18.900,18.450,17.950,17.550,17.300,16.950,16.900,16.850,17.100,17.250,17.400,17.850,18.100,18.600,19.700,21.000,21.400,22.650,22.550,22.000,21.050,19.550,18.550,18.300,17.750,17.800,17.650,17.800,17.450,16.950,16.500,16.900,17.050,16.750,17.300,18.800,19.350,20.750,21.400,21.900,21.950,22.800,22.750,23.200,22.650,20.800,19.250,17.800,16.950,16.550,16.050,15.750,15.150,14.700,14.150,13.900,13.900,14.000,15.800,17.650,19.700,22.500,25.300,24.300,24.650,26.450,27.250,26.550,28.800,27.850,25.200,24.750,23.750,22.550,22.350,21.700,21.300,20.300,20.050,20.500,21.250,20.850,21.000,19.400,18.900,18.150,18.650,20.200,20.000,21.650,21.950,21.150,20.400,19.500,19.150,18.400,18.050,17.750,17.600,17.150,16.750,16.350,16.250,15.900,15.850,15.900,16.200,18.500,18.750,18.800,19.850,19.750,19.600,19.300,20.000,20.250,19.700,18.600,17.400,17.100,16.650,16.250,16.250,15.800,15.350,14.800,14.250,13.500,13.400,14.350,15.800,17.700,19.000,21.050,22.200,22.450,24.950,24.750,25.050,26.400,26.200,26.500,25.850,24.400,23.600,22.650,21.500,20.150,19.900,18.850,18.700,18.750,18.650,20.050,23.450,24.900,26.450,28.550,30.600,31.550,32.800,33.500,33.700,34.450,34.200,33.650,32.900,31.750,30.500,29.250,28.100,26.450,25.400,25.400,25.150,25.400,25.100,25.950,28.100,30.400,32.000,33.750,34.700,35.800,37.000,39.050,39.750,41.200,41.050,36.050,28.250,24.450,23.150,22.050,21.600,21.450,20.800,20.250,19.700,19.400,19.650,19.100,18.650,18.900,19.400,20.700,21.750,22.350,24.100,23.350,24.400,22.950,22.400,20.950,19.600,18.900,18.000,17.400,16.800,16.550,16.300,16.250,16.750,16.700,17.100,17.500,18.150,18.850,20.650,22.600,25.600,28.500,26.750,27.200,27.300,27.500,27.000,25.450,24.500,23.850,23.200,22.550,21.850,21.050,20.200,19.950,20.400,20.300,20.100,20.450,20.900,21.450,21.800,23.250,24.100,25.200,25.550,25.900,25.450,26.050,25.350,23.900,22.250,22.000,21.700,21.450,20.550,19.000,18.850,18.700,19.050,19.350,19.350,19.450,19.600,20.550,22.400,24.550,26.900,27.950,28.500,28.200,29.050,28.700,28.800,27.150,24.900,23.500,23.350,23.000,22.300,21.400,20.700,19.850,19.400,19.250,18.700,18.650,20.200,23.400,26.400,27.450,29.150,32.050,34.500,34.950,36.550,37.850,38.400,35.150,34.050,34.100,33.100,30.300,29.300,27.550,26.600,25.900,25.500,25.150,25.000,25.150,27.000,31.150,32.750,31.500,26.900,23.900,23.150,22.850,21.500,21.150,21.300,19.700,18.800,18.450,18.300,17.800,16.850,16.400,16.150,15.700,15.500,15.400,15.300,15.050,15.650,18.100,19.200,21.050,22.350,23.450,24.850,24.950,25.550,25.300,24.250,22.750,20.850,19.350,18.250,17.450,17.000,16.500,16.100,15.950,15.300,14.550,14.250,14.400,15.550,18.300,20.000,22.750,25.450,25.800,26.350,29.150,30.450,30.350,29.600,27.550,25.550,23.650,22.950,21.850,20.700,20.150,19.300,19.000,18.400,17.800,17.750,18.000,20.800,23.400,25.750,27.750,29.600,32.150,32.900,33.650,34.300,34.800,35.050,33.750,33.250,32.400,31.250,29.650,28.550,26.550,25.950,25.000,24.400,24.150,24.150,24.350,26.900,28.750,30.350,32.750,34.250,35.300,28.400,27.250,26.600,25.750,25.350,23.150,21.550,20.850,20.550,20.350,20.550,20.600,19.900,19.550,19.200,18.900,18.850,19.250,21.000,23.050,25.350,27.700,31.050,35.250,35.100,36.850,39.250,40.000,39.450,38.950,37.750,33.850,30.400,25.700,25.400,25.600,28.150,32.400,31.850,31.350,31.200,31.100,31.950,32.450,35.200,38.400,35.850,30.700,27.850,26.900,26.650,25.250,24.450,22.500,22.050,20.000,19.750,19.100,18.500,18.400,17.400,16.900,16.800,16.450,16.050,16.300,17.450,19.300,20.000,21.050,22.800,22.550,23.300,24.050,23.100,23.100,22.500,20.800,19.550,18.800,18.200,17.650,17.750,17.150,16.550,16.200,16.000,15.600,15.150,15.150,16.250,17.800,19.150,21.000,22.800,23.850,24.250,26.200,25.650,25.050,23.850,23.600,23.100,22.950,22.550,21.550,20.450,19.600,18.700,18.300,18.000,17.550,17.300,17.200,17.950,19.450,21.100,23.050,24.650,25.050,25.850,25.300,26.650,25.500,25.900,26.250,25.300,25.150,23.600,22.050,21.700,21.150,20.550,20.500,20.200,20.500,20.600,20.900,21.700,22.000,22.250,23.400,23.900,25.250,26.200,26.000,25.300,25.200,25.300,25.500,25.350,25.050,24.850,24.050,23.150,22.300,21.900,21.150,20.300,19.650,19.700,19.750,20.250,21.500,23.600,24.600,25.900,25.450,24.850,25.900,26.150,26.250,26.350,26.250,25.850,25.300,24.600,23.750,22.250,21.750,21.450,21.500,21.300,21.250,21.200,21.600,22.000,23.650,25.200,26.400,25.500,25.150,26.950,28.350,25.650,25.000,25.500,24.150,22.900,21.600,21.750,21.500,21.550,20.450,19.500,18.750,18.650,18.200,17.300,17.900,18.050,17.400,16.850,17.950,20.550,21.950,22.600,22.300,22.400,22.300,21.100,20.250,19.200,18.900,18.600,18.350,17.700,17.200,16.850,16.900,16.800,16.800,16.600,16.350,17.200,18.350,19.550,20.300,21.600,21.800,23.300,23.200,24.550,24.950,24.900,23.700,22.000,19.650,18.250,17.700,17.250,16.900,16.550,16.050,16.450,15.400,14.900,14.700,16.100,18.450,19.800,23.000,25.250,27.600,27.900,28.550,29.450,29.700,29.350,27.000,23.550,21.900,20.750,20.150,19.600,19.150,18.800,18.550,18.200,17.750,17.650,17.800,18.750,19.600,20.450,21.950,23.700,23.150,24.150,24.550,21.400,19.150,19.050,16.500,15.900,14.850,15.300,14.100,13.800,13.600,13.450,13.400,13.050,12.750,12.800,12.750,13.600,14.950,16.100,17.500,18.500,19.300,19.400,19.750,19.400,19.450,19.450,18.900,17.650,16.800,15.900,15.050,14.550,14.250,13.800,13.850,13.700,13.650,13.350,13.400,14.050,15.000,16.650,17.850,18.450,18.200,18.900,19.850,20.000,19.700,18.800,17.500,16.600,16.250,16.000,16.300,16.400,15.800,15.850,14.600,14.650,15.200,14.900,14.600,15.150,16.000,16.350,17.000,18.300,19.050,19.300,19.400,18.650,18.750,19.100,18.300,17.950,17.550,16.900,16.450,15.850,15.800,15.650,15.200,14.700,14.950,15.250,15.200,15.800,16.800,17.900,19.700,21.050,21.600,22.550,22.750,22.900,22.500,21.950,20.450,19.600,19.200,18.000,16.950,16.450,16.150,15.600,15.150,15.250,15.200,14.750,15.050,15.600,17.750,18.450,20.050,21.350,22.500,23.550,24.100,22.600,23.150,24.100,22.650,21.250,19.900,19.100,18.250,17.750,17.500,16.600,16.100,15.850,15.750,15.700,16.350,19.600,25.750,27.800,30.050,32.350,31.900,32.450,29.600,28.850,23.450,21.100,20.100,20.100,19.900,19.300,19.050,18.850".split(",")).astype(np.float32)
    temperature=temperature[0:241]
    demand_dates=demand_dates[0:241]
    
    demand_training_data = demand[:-num_forecast_steps]
    return demand_training_data,demand_dates,demand,demand_loc,demand_fmt



import plotly.express as px
import plotly.graph_objects as go
# Create traces
def pl(x, y,forecast_mean, forecast_scale, forecast_samples,
       title, x_locator=None, x_formatter=None):
    
    num_steps = len(y)
    num_steps_forecast = forecast_mean.shape[-1]
    num_steps_train = num_steps - num_steps_forecast
    fig = go.Figure()
    fig.add_trace(go.Scatter(x=x[0:num_steps_train], y=y[0:num_steps_train],
                    mode='lines',
                    name='ground truth'))
    forecast_steps = np.arange(
      x[num_steps_train],
      x[num_steps_train]+num_steps_forecast,
      dtype=x.dtype)
    
    fig.add_trace(go.Scatter(x=forecast_steps,y=forecast_mean,
                             mode='lines', name='forecast'))
    
    fig.add_trace(go.Scatter(x=forecast_steps,y=forecast_mean-2*forecast_scale,
                             mode='lines', name='95% Confidence Interval',fill='tonexty',line = dict(color='royalblue', width=1, dash='dash')))
    
    fig.add_trace(go.Scatter(x=forecast_steps,y=forecast_mean+2*forecast_scale,
                             mode='lines', name='',fill='tonexty',line = dict(color='royalblue', width=1, dash='dash'),showlegend=False))
    
    
    ymin, ymax = min(np.min(forecast_samples), np.min(y)), max(np.max(forecast_samples), np.max(y))
    yrange = ymax-ymin
    
    fig['layout']['yaxis1'].update(title='', range=[ymin - yrange*0.1, ymax + yrange*0.3], dtick=40, autorange=False)
    
    fig.update_layout(template="plotly_dark")

    return fig




def build_model(observed_time_series):
  hour_of_day_effect = sts.Seasonal(
      num_seasons=24,
      observed_time_series=observed_time_series,
      name='hour_of_day_effect')
  day_of_week_effect = sts.Seasonal(
      num_seasons=7, num_steps_per_season=24,
      observed_time_series=observed_time_series,
      name='day_of_week_effect')
    
  day_of_month = tfp.sts.Seasonal(
  num_seasons=30,
  num_steps_per_season=1,
  #drift_scale_prior=tfd.LogNormal(loc=-1., scale=0.1),
  #initial_effect_prior=tfd.Normal(loc=0., scale=5.),
  observed_time_series=observed_time_series,
  name='month_of_year')
    
  #temperature_effect = sts.LinearRegression(
   #   design_matrix=tf.reshape(temperature - np.mean(temperature),
    #                           (-1, 1)), name='temperature_effect')
  autoregressive = sts.Autoregressive(
      order=1,
      observed_time_series=observed_time_series,
      name='autoregressive')
  model = sts.Sum([hour_of_day_effect,
                   day_of_week_effect,
                   day_of_month,
                   autoregressive],
                   observed_time_series=observed_time_series) #temperature_effect was added
  return model



demand_training_data = preprocess(df)[0]
demand_model = build_model(demand_training_data)

# Build the variational surrogate posteriors `qs`.
variational_posteriors = tfp.sts.build_factored_surrogate_posterior(
    model=demand_model)


# Allow external control of optimization to reduce test runtimes.
num_variational_steps = 200 # @param { isTemplate: true}
num_variational_steps = int(num_variational_steps)

optimizer = tf.optimizers.Adam(learning_rate=.1)
# Using fit_surrogate_posterior to build and optimize the variational loss function.
@tf.function(experimental_compile=True)
def train():
  elbo_loss_curve = tfp.vi.fit_surrogate_posterior(
    target_log_prob_fn=demand_model.joint_log_prob(
        observed_time_series=demand_training_data),
    surrogate_posterior=variational_posteriors,
    optimizer=optimizer,
    num_steps=num_variational_steps)
  return elbo_loss_curve

elbo_loss_curve = train()
# Draw samples from the variational posterior.
q_samples_demand_ = variational_posteriors.sample(50)




def inferred_parameters():
    Inferred_parameters=[]
    for param in demand_model.parameters:
          Inferred_parameters.append("{}: {} +- {}".format(param.name,
                              np.mean(q_samples_demand_[param.name], axis=0),
                              np.std(q_samples_demand_[param.name], axis=0)))
    return Inferred_parameters


demand_forecast_dist = tfp.sts.forecast(
    model=demand_model,
    observed_time_series=demand_training_data,
    parameter_samples=q_samples_demand_,
    num_steps_forecast=num_forecast_steps)
forecast_component_dists = sts.decompose_forecast_by_component(
    demand_model,
    forecast_dist=demand_forecast_dist,
    parameter_samples=q_samples_demand_)

num_samples=10

(
    demand_forecast_mean,
    demand_forecast_scale,
    demand_forecast_samples
) = (
    demand_forecast_dist.mean().numpy()[..., 0],
    demand_forecast_dist.stddev().numpy()[..., 0],
    demand_forecast_dist.sample(num_samples).numpy()[..., 0]
    )




def graph_forecast():
    demand_dates = np.arange('2019-12-15', '2020-07-15', dtype='datetime64[D]')
    demand_dates=demand_dates[0:241]
    demand_loc = preprocess(df)[3] 
    demand_fmt = preprocess(df)[4]
    demand=preprocess(df)[2]
    fig= pl(demand_dates, demand,
                        demand_forecast_mean,
                        demand_forecast_scale,
                        demand_forecast_samples,
                        title=" ",
                        x_locator=demand_loc, x_formatter=demand_fmt)
    return fig





