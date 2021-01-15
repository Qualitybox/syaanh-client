import requests


def API_Request(method, url, headers=None, params=None, data=None, json=None, files=None):
    print (url)
    method = method.upper()
    if (files != None):
        files = [
            ('file', open(files, 'rb'))]
    
    r = requests.request(method, url=url, headers=headers, params=params, json=json, data=data, files=files)
    print(r.content)
    return r


def Check_Status_Code(resp, expected):
    status = str(resp.status_code)
    if status != expected:
        raise Exception("Expected status code is " + str(expected) + " but got " + status)
    print('Status code is : ' + status)


def Check_Response_Attribute(resp, attribute, expectedValue, Contains=False, depth=[]):
    response = resp.json()
    #In case of nested dictionary, we'll iterate over depth list (provided by data file)
    for i in depth:
        response = response[i]
    attributeValue = response[attribute]
    print('Attribute value is : ' + str(attributeValue))
    if (Contains):
        __Check_Contains(attributeValue, expectedValue)
    else:
        __String_Match(attributeValue, expectedValue)


def __Check_Contains(attributeValue, expectedValue):
    if expectedValue not in attributeValue:
        raise Exception("'" + str(attributeValue) + "' is expected to contain  '" + str(expectedValue) + "', but it is not !")


def __String_Match(attributeValue, expectedValue):
    if attributeValue != expectedValue:
            raise Exception("Expected attribute value is '" + str(expectedValue) + "' but got '" + str(attributeValue) + "'")


def Check_Response_Length(resp, expectedLength):
    length = len(resp.json())    
    status = str(resp.status_code)
    print('Length is : ' + str(length))
    print('expectedLength is : ' + str(expectedLength))
    print('Status is :' + str(status))
    expectedLength = int(expectedLength)
    if not (status == '200' and length >= 0 and length <= expectedLength):
            raise Exception("'" + str(length) + "' is expected to be lower or equal to  '" + str(expectedLength) + "', but it is not !")        

