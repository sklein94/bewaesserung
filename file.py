#!/usr/bin/env python
import mysql.connector
import os

mydb = mysql.connector.connect(
   host="localhost",
   user="root",
   passwd="root",
   database="bewaesserung"
);

mycursor = mydb.cursor()

mycursor.execute("select id, time_to_sec(time(ende-start))/60 from bewaesserung where wochentag='montag'");

myresult = mycursor.fetchall()

for x in myresult:
   os.system("sudo python script.py "+ str(int(x[1])));
