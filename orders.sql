/* CREATE TABLE ORDERS (
OrderID INT PRIMARY KEY,
CustomerID INT,
BookID INT,
Quantity INT NOT NULL,
Order_Date DATE NOT NULL,
TotalAmount DECIMAL (10,2),

FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID),
FOREIGN KEY (BookID) REFERENCES BOOKS(BookID)
); */


 -- manually calculate the TotalAmount in the orders table
UPDATE ORDERS AS o
JOIN BOOKS AS b 
ON b.BookID = o.BookID
SET o.TotalAmount = b.Price * o.Quantity
WHERE o.OrderID > 0;


INSERT INTO ORDERS
VALUES 
(501, 104, 5, 2, '2018-02-25' , NULL);

 -- Dropping the column TotalAmount
 ALTER TABLE ORDERS 
 DROP COLUMN TotalAmount
 
 -- Changing Quantity INT NOT NULL to allowing NULLS
 ALTER TABLE ORDERS 
 MODIFY Quantity INT;
 
 INSERT INTO ORDERS
VALUES 
(502, NULL, NULL, NULL, '2018-02-25' );

 INSERT INTO ORDERS
VALUES /* OrderID, CustomerID ,BookID ,Quantity ,Order_Date */
(503,  106, 7,5, '2022-05-03' ),
(504,  105, 5,2, '2022-08-23' ),
(505,  110, 12, 3,'2015-05-03' ),
(506,  108, 7,2, '2025-05-03' ),
(507,  109, 1, 1,'2023-09-11' ),
(508,  101, 8,3, '2024-11-25' ),
(509,  110, 5,8, '2019-10-08' ),
(510,  105, 2,5, '2017-04-13' ),
(511,  NULL, NULL, NULL, '2017-05-03' ),
(512,  112, 2, 1,'2023-08-25' ),
(513,  103, 8, 2,'2012-02-14' ),
(514,  107, 8, 3,'2020-12-25' ),
(515,  108, 5,8, '2021-09-03' ),
(516,  110, 5,3, '2024-05-31' ),
(517,  NULL, NULL, NULL, '2017-01-03' ),
(518,  112, 2, 2, '2009-12-21' ),
(519,  103, 7,5, '2022-08-03' ),
(520,  106, 12,4, '2022-12-13' ),
(521,  NULL, NULL, NULL,'2024-03-03' ),
(523,  101, 1, 3,'2024-03-23' ),
(524,  108, 5, 1,'2025-05-03' ),
(525, 110, 8, 4, '2021-05-24' ),
(526,  NULL, NULL, NULL, '2021-12-31' ),
(527,  112, 9,5, '2018-2-6' ),
(528, 101, 12,2, '2022-11-03' ),
(529,  NULL, NULL, NULL,'2017-06-18' ),
(530,  104, 10,2, '2014-09-04' ),
(531, 107, 4,4, '2015-07-08' ),
(532,  109, 3,3, '2022-11-23' );
