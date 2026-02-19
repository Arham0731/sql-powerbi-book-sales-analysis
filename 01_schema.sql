-- Create Database
CREATE DATABASE project;

-- Create Tables
CREATE TABLE books(
Book_ID	SERIAL	PRIMARY KEY,
Title	VARCHAR(100),	
Author	VARCHAR(50),	
Genre	VARCHAR(50),	
Published_Year	INT,	
Price	NUMERIC(10,2),	
Stock	INT	
);


CREATE TABLE customers(
Customer_ID	SERIAL	PRIMARY KEY,
Name	VARCHAR(50)	NOT NULL,
Email	VARCHAR(100)	NOT NULL,
Phone	VARCHAR(15)	NOT NULL,
City	VARCHAR(50),	
Country	VARCHAR(100)	
);


CREATE TABLE orders(
Order_ID	SERIAL	PRIMARY KEY,
Customer_ID	INT	REFERENCES customers(customer_id),
Book_ID	INT	REFERENCES books(book_id),
Order_Date	DATE,
Quantity	INT,
Total_Amount	NUMERIC(10,2)
);


-- Data has been imported through the direct function

SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;