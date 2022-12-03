from flask import Flask, render_template, request, redirect, flash, session
from werkzeug.security import generate_password_hash, check_password_hash
from flask_mysqldb import MySQL
import yaml

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('main-user.html')

if __name__ == '__main__':
	app.run(debug=True)