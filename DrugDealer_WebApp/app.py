from flask import Flask, render_template, request, redirect, flash, session
from werkzeug.security import generate_password_hash, check_password_hash
from flask_mysqldb import MySQL
import yaml

app = Flask(__name__)

@app.route('/')
def index_admin():
    return render_template('index_admin.html')

@app.route('/index_employee/')
def index_employee():
    return render_template('index_employee.html')

@app.route('/payment/')
def payment():
    return render_template('payment.html')

if __name__ == '__main__':
	app.run(debug=True)