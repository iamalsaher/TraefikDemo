from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    envar = os.environ.get('WHOAMI')
    if envar == None:
        return "Envar whoami not set\n"
    return 'Hi I am {}\n'.format(envar)