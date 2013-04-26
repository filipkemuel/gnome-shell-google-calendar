'''
Created on 17.02.2012

@author: flocki
'''
import json
import os


def set(parameter, value):
    config = get(None)
    config[parameter] = value

    with open(os.path.expanduser('~/.gnome-shell-google-calendar/config.json'), 'w') as fp:
        json.dump(config, fp)


def get(parameter):
    try:
        with open(os.path.expanduser('~/.gnome-shell-google-calendar/config.json'), 'r') as fp:
            config = json.load(fp)
    except:
        config = dict()

    if parameter is None:
        return config
    if parameter in config:
        return config.get(parameter)
    else:
        config[parameter] = None
