from absl import logging
import numpy as np
import requests
import ast
import json

#Tensorflow servering
url = "http://localhost:8501/v1/models/model:predict"


def create_payload(input):
        value={}
        payload={}
        value["input"]=input
        payload["instances"]=value
        return json.dumps(payload)


def return_lstm_prediction(input)
        payload=create_payload(input)
        headers = {
        'Content-Type': "application/json",'Accept':'application/json'
        }
        response = requests.request("POST", url, data=payload, headers=headers)
        #Get the output from our model
        x=response.text
        #Preprocessing the response
        x=x[14:-1]
        x=x.replace(' ','')
        predictions = ast.literal_eval(x)
        return predictions
