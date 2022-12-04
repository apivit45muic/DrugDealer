from flask import Flask, render_template, request, redirect, flash, session
from werkzeug.security import generate_password_hash, check_password_hash

from flask_mysqldb import MySQL
import yaml

app = Flask(__name__)
app.config['SECRET_KEY'] = "Never push this line to github public repo"

cred = yaml.load(open('cred.yaml'), Loader=yaml.Loader)
app.config['MYSQL_HOST'] = cred['mysql_host']
app.config['MYSQL_USER'] = cred['mysql_user']
app.config['MYSQL_PASSWORD'] = cred['mysql_password']
app.config['MYSQL_DB'] = cred['mysql_db']
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

@app.route('/')
def index_admin():
    return render_template('index_admin.html')

@app.route('/index_employee/')
def index_employee():
    return render_template('index_employee.html')

@app.route('/payment/')
def payment():
    return render_template('payment.html')
    
@app.route('/stock/')
def showMeds():
    cur = mysql.connection.cursor()
    queryStatement = f"SELECT * FROM medicine"
    cur.execute(queryStatement)
    medsList = cur.fetchall()
    return render_template("stock.html", medsList=medsList)

if __name__ == '__main__':
	app.run(debug=True)

# @app.route("/")
# def index():
#     return render_template("index.html")

# if name == 'main':
#     app.run(debug=True)
