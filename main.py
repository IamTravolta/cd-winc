# Import what we need from flask
# from flask import Flask, render_template
from flask import Flask
from lib import power

# Create a Flask app inside `app`
app = Flask(__name__)

# Assign a function to be called when the path `/` is requested
@app.route('/')
def index():
    result = power(2, 2)
    return f'The result is {result}'


if __name__ == '__main__':
    app.run(debug=True)
