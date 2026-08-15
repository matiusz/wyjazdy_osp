import pyodbc
import flask
import random
from flask_cors import CORS

cnxn = pyodbc.connect(r'DRIVER={ODBC Driver 17 for SQL Server};Server=(localdb)\MSSQLLocalDB;Integrated Security=true');

app = flask.Flask(__name__)
CORS(app)

@app.route("/people")
def people():
    cursor = cnxn.cursor()
    cursor.execute('SELECT Imię, Nazwisko, "Prawo Jazdy" FROM Osoby')
    return [(f"{el[0]} {el[1]}", el[2].split(";")[0], 'dowodca' if (random.random() < 0.25) else '') for el in cursor]

@app.route("/cars")
def cars():
    cursor = cnxn.cursor()
    cursor.execute('SELECT Producent, Marka FROM Samochody')
    return [f"{el[0]} {el[1]}" for el in cursor]

app.run(debug=True)