'''
Created on 17.02.2012

@author: flocki
'''
import json

def set(parameter, value):
    config = get(None)
    config[parameter] = value
    with open('config.json', 'w') as fp:
        json.dump(config, fp)

def get(parameter):
    try:
        with open('config.json', 'r') as fp:
            config = json.load(fp)
    except:
        config = dict()

    if parameter is None:
        return config
    if config.has_key(parameter):
        return config.get(parameter)
    else:
        config[parameter] = None
