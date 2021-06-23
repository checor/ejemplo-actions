from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h2>¡Hola Talent Land!</h2>"
