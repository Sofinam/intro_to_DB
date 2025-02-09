import mysql.connector

db_config = {
    "host": "127.0.0.1",
    "user": "root",
    "password": "database",
    "database": "alx_book_store"
}

try:
    connection = mysql.connector.connect
    cursor = connection.cursor()

    tables = {

        "authors": """
            CREATE TABLE IF NOT EXISTS authors (
                author_id INT AUTO_INCREMENT PRIMARY KEY,
                author_name VARCHAR(215) NOT NULL
            )
        """,

        "books": """
             CREATE TABLE IF NOT EXISTS books (
                book_id INT AUTO_INCREMENT PRIMARY KEY,
                title VARCHAR(130) NOT NULL,
                author_id INT,
                price DOUBLE NOT NULL,
                publication_date DATE,
                FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE SET NULL
             )
        """,

        "customers": """
            CREATE TABLE IF NOT EXISTS customers (
               customer_id INT AUTO_INCREMENT PRIMARY KEY,
               customer_name VARCHAR(215) NOT NULL,
               email VARCHAR(215) UNIQUE NOT NULL,
               address TEXT
            )
        """,

        "orders": """
            CREATE TABLE IF NOT EXISTS orders(
                order_id INT AUTO_INCREMENT PRIMARY KEY,
                customer_id INT,
                order_data DATE NOT NULL,
                FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
            )
        """,

        "Order_Details";"""
            CREATE TABLE Order_Details (
                orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
                order_id INT,
                book_id INT,
                quantity DOUBLE NOT NULL,
                FOREIGN KEY (order_id) REFERENCES `Orders`(order_id) ON DELETE CASCADE,
                FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
            )
        """,

    }

    for table_name. table_query in tables.items():
        cursor.execute(table_query)
        print(f"Table '{table_name}' created successfully.")

    cursor.close()
    connection.close()

except mysql.connector.Error as err:
    print(f"Error: {err}")