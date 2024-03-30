# Import what we need from flask
from flask import Flask, render_template
from lib import power

# Create a Flask app inside `app`
app = Flask(__name__)

# Assign a function to be called when the path `/` is requested
@app.route('/')
def index():
    return 'MOoooOo again!'