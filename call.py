  
from absl import logging
import numpy as np
logging.set_verbosity(logging.ERROR)
import requests
import ast
import json

#Connecting to out tensorflow server
#url = "http://localhost:8501/v1/models/linear_model:predict"
url = "http://localhost:8501/v1/models/model:predict"

payload={
     "instances":[ [
          220.0
    ]], "instances":[[221.0]]
}

L=[]
for i in np.arange(0,1000):
#	print(i)
	payload={"instances":[[float(i)]]}


	headers = {
        	'Content-Type': "application/json",'Accept':'application/json'
        }
	response = requests.request("POST", url, data=json.dumps(payload), headers=headers)

	
	L.append(response.text)
print(L)
