import json
import jsonpath
import os

def readdata1(locatorname):
    f= open('C:\\Users\\SOURAV\\Downloads\\Data\\pythonProject\\RobotAutomation\\jsonFiles\\keyword.json','r')
    response=json.load(f)
    value=jsonpath.jsonpath(response,locatorname)
    return value[0]

