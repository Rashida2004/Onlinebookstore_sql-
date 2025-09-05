-- Sample online bookstore Database
-- CREATE TABLES

CREATE TABLE BOOKS (
BookID INT PRIMARY KEY,
Author VARCHAR (200) NOT NULL,
Genre VARCHAR (50) NOT NULL,
Price DECIMAL (8,2),
YearPublished DATE
);

CREATE TABLE CUSTOMERS (
CustomerID INT PRIMARY KEY,
Name VARCHAR (200) NOT NULL,
Email VARCHAR (200) NOT NULL,
City VARCHAR (50) NOT NULL
);

CREATE TABLE ORDERS (
OrderID INT PRIMARY KEY,
CustomerID INT,
BookID INT,
Quantity INT NOT NULL,
Order_Date DATE NOT NULL,
TotalAmount DECIMAL (10,2),

FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID),
FOREIGN KEY (BookID) REFERENCES BOOKS(BookID)
);

-- Changing the COLUMN name City to State
ALTER TABLE CUSTOMERS
CHANGE COLUMN City State VARCHAR (50) NOT NULL;

-- Adding a new column to the table BOOKS
ALTER TABLE BOOKS 
ADD Book_Title VARCHAR (100) NOT NULL

-- Removing the column 
ALTER TABLE BOOKS 
DROP Book_Title ;

-- Adding a new column to the table BOOKS but be after the bookID
ALTER TABLE BOOKS 
ADD Book_Title VARCHAR (100) NOT NULL
AFTER BookID;

-- making the database store only year example 2017
ALTER TABLE BOOKS 
MODIFY YearPublished YEAR;

-- manually calculate the TotalAmount in the orders table
UPDATE ORDERS AS o
JOIN BOOKS AS b 
ON b.BookID = o.BookID
SET o.TotalAmount = b.BookID * o.BookID;