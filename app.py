from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello my name is Nicolas\n"

@app.route("/health")
def health_check():
    return jsonify(status='ok')
