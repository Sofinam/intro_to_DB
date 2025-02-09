USE alx_book_store;

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES
      (2, "Blessing Malik", "bmalik@sandtech.com", "124 Happiness Ave."),
      (3, "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness Ave."),
      (4, "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness Ave.");