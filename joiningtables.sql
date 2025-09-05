 -- JOINING OF TABLES
 
 -- orders with the book title and customer name
 SELECT 
 c.Name,
 c.CustomerID,
 b.Book_Title,
 b.BookID,
 o.OrderID
 FROM CUSTOMERS AS c
 LEFT JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 LEFT JOIN BOOKS AS b
 ON o.BookID = b.BookID
 
 
 -- customers who have placed at least one order
 SELECT 
 DISTINCT
 c.Name
 FROM CUSTOMERS AS c
 LEFT JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 -- DISTINCT is used to remove dublicate
 
 -- customers and books they bought
 SELECT 
 c.Name,
 c.CustomerID,
 b.Book_Title
 FROM CUSTOMERS AS c
 LEFT JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID=
 LEFT JOIN BOOKS AS b
 ON o.BookID = b.BookID;
 
 -- number of books each custumer bought
 SELECT 
 c.Name,
 c.CustomerID,
 sum(o.Quantity)  AS TotalBooksBought
 FROM CUSTOMERS AS c
 LEFT JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 LEFT JOIN BOOKS AS b
 ON o.BookID = b.BookID
 GROUP BY c.CustomerID, c.Name;
 
 -- customers who have never purchase a book
 SELECT 
 c.CustomerID,
 c.Name,
 o.OrderID
 FROM 
 CUSTOMERS AS c
 LEFT JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 WHERE o.OrderID IS NULL
 
 -- The most sold books
 SELECT
 b.Book_Title,
 SUM(o.Quantity) AS TotalSold
 FROM BOOKS AS b
 LEFT JOIN ORDERS AS o
 ON b.BookID = o.BookID
 GROUP BY b.BookID , b.Book_Title
 ORDER BY TotalSold DESC
 LIMIT 1;
 
 
 -- The book with the least sales
 SELECT
 b.Book_Title,
 SUM(o.Quantity) AS TotalSold
 FROM BOOKS AS b
 LEFT JOIN ORDERS AS o
 ON b.BookID = o.BookID
 GROUP BY b.BookID , b.Book_Title
 ORDER BY TotalSold ASC
 LIMIT 1;
 
 -- The most sold books
 SELECT
 b.Book_Title,
 SUM(o.Quantity) AS TotalSold
 FROM BOOKS AS b
 LEFT JOIN ORDERS AS o
 ON b.BookID = o.BookID
 GROUP BY b.BookID , b.Book_Title
 ORDER BY TotalSold DESC
 LIMIT 1;
 
 -- Top 3 most sold books
 SELECT
 b.Book_Title,
 SUM(o.Quantity) AS TotalSold
 FROM BOOKS AS b
 LEFT JOIN ORDERS AS o
 ON b.BookID = o.BookID
 GROUP BY b.BookID , b.Book_Title
 ORDER BY TotalSold DESC
 LIMIT 3;
 
 -- books that have never been sold
 SELECT 
 *
 FROM BOOKS AS b
 LEFT JOIN ORDERS AS o
 ON b.BookID = o.BookID
 WHERE o.OrderID IS NULL;
 
 -- Show each order with Customer Name, Book Title, Price, and Quantity
 SELECT 
 c.Name,
 b.Book_Title,
 b.Price,
 o.Quantity
 FROM CUSTOMERS AS c
 INNER JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 LEFT JOIN BOOKS AS b
 ON o.BookID = b.BookID
 
 -- Show all customers who have bought 'The Historian'
  SELECT 
 c.Name,
 b.Book_Title
 FROM CUSTOMERS AS c
 INNER JOIN ORDERS AS o
 ON c.CustomerID = o.CustomerID
 LEFT JOIN BOOKS AS b
 ON o.BookID = b.BookID
 WHERE Book_Title = 'The Historian';
 
 