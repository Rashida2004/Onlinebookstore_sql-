-- All orders made after January 1st 2022
SELECT 
*
FROM ORDERS 
WHERE Order_Date > '2020-01-01';

-- Find all customers who live in New York or Alabama
SELECT 
*
FROM CUSTOMERS
WHERE State IN ('New York','California');

-- Find all customers from Alaska
SELECT 
*
FROM CUSTOMERS
WHERE State = 'Alaska';

-- Find customers from multiple state Alabama, California, Maryland
SELECT 
*
FROM CUSTOMERS
WHERE State IN ('Alabama','California','Maryland');

-- books where the price is between 20 and 50
SELECT 
*
FROM books
WHERE Price BETWEEN 20 AND 50;

-- books where the price is between 20 and 50 (another option)
SELECT 
*
FROM books
WHERE Price >= 20 OR Price <=50;

-- with a price NOT between 20 and 40
SELECT 
*
FROM
BOOKS 
WHERE PRICE < 20 OR PRICE > 40

-- customers whose email ends with “.com”
SELECT 
*
FROM CUSTOMERS
WHERE Email LIKE '%.com'

-- email starts with “s”
SELECT 
*
FROM CUSTOMERS
WHERE Email LIKE 's%'

-- email name with “n”
SELECT 
*
FROM CUSTOMERS
WHERE Email LIKE 'n%'

-- finding customer's name ending with “on”
SELECT 
*
FROM CUSTOMERS
WHERE Name LIKE '%on'

-- finding names with “r” as the 3rd letter
SELECT 
*
FROM CUSTOMERS
WHERE Name LIKE '__r%';

-- cutomers with yahoo mail
SELECT 
*
FROM CUSTOMERS
WHERE Email LIKE '%yahoo%'

-- cutomers with the name smith mail
SELECT 
*
FROM CUSTOMERS
WHERE Email LIKE '%Smith%'

-- books that contains 'The' in the title
SELECT 
*
FROM BOOKS
WHERE Book_Title LIKE '%The%'

-- order with quatity greater than 3
SELECT 
*
FROM ORDERS
WHERE Quantity > 3;

-- Show all books where the genre is either 'Fiction' or 'MysterY'
SELECT
*
FROM BOOKS 
WHERE Genre = 'Fiction' OR Genre = 'Mystery'

-- Find all orders where CustomerID is NULL / Incomplete orders
SELECT 
*
FROM ORDERS
WHERE CustomerID IS NULL;

