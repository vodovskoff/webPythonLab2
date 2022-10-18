import pandas as pd;
import sqlite3
con = sqlite3.connect("library.sqlite")
f_damp = open('BD/db_creation.sql','r', encoding ='utf-8-sig')
damp = f_damp.read()
f_damp.close()
con.executescript(damp)
con.commit()

