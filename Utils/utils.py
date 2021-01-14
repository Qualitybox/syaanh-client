from datetime import datetime
import base64
import random 


def codage64(id, secret):
    base64_message = id + ":" + secret
    base64_bytes = base64_message.encode('ascii')
    base64_bytes = base64.b64encode(base64_bytes)
    return base64_bytes.decode("utf-8")


def replace(str,param=None):
    # A Python Function that replace a specific part in a string  
    # it replaces the string with the runtime timestamp if the param == None else the string will be replaced by the string sent as an argument
    if (param == None):  
        str = str.replace('xxxx', datetime.now().strftime("%m%d%Y%H%M%S"))
    else:
        str = str.replace('xxxx', param)
    return str


def Generate_Random_Value_From_List(list):
    random_value = random.choice(list)
    return random_value

def Get_all_attribute_value(resp,attribute):
    values = [attributeValue['{}'.format(attribute)] for attributeValue in resp.json.loads(jsonString)]
    return values
