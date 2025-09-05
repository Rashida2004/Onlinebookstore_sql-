/* CREATE TABLE CUSTOMERS (
CustomerID INT PRIMARY KEY,
Name VARCHAR (200) NOT NULL,
Email VARCHAR (200) NOT NULL,
State VARCHAR (50) NOT NULL
); */

INSERT INTO CUSTOMERS 
VALUES
( 101, 'James Harry', 'harry54@yahoo.com', 'Los Angeles' )

INSERT INTO CUSTOMERS 
VALUES
( 102, 'Thompson Davids', 'tommy5@gmail.com.com', 'New York' ),
( 103, 'Joseph Smith', 'smith78@gmail.com', 'Florida' ),
( 104, 'Mary Smart', 'smartmary8@gmail.com', 'Florida' ),
( 105, 'Joseph Brown', 'browny@gmail.com', 'Texas' ),
( 106, 'McBerry Sam', 'sammy@gmail.com', 'Alabama' ),
( 107, 'Ginny Fly', 'ginny@gmail.com', 'Maryland' ),
( 108, 'Mary London', 'london45@gmail.com', 'Alaska' ),
( 109, 'Yolan Baker', 'bakers@gmail.com', 'Alabama' ),
( 110, 'Bella Crunch', 'bella@gmail.com', 'Colorado' ),
( 112, 'Samuel Bush', 'bush789@gmail.com', 'Arizona' );

/* Changing the city of a customer with the ID 101*/
UPDATE CUSTOMERS
SET STATE = 'California'
WHERE CustomerID = 101;