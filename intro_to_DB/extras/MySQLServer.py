import mysql.connector

connection = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="database",
    database="alx_book_store"
)

cursor = connection.cursor()

print("Database 'alx_book_store' created successfully!")

cursor.close()
connection.close()



