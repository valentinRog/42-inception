from flask import render_template, url_for
from .app import app
import os

@app.route("/")
def index():
    return render_template("index.html")