/* CREATE TABLE BOOKS (
BookID INT PRIMARY KEY,
Book_Title VARCHAR (100) NOT NULL,
Author VARCHAR (200) NOT NULL,
Genre VARCHAR (50) NOT NULL,
Price DECIMAL (8,2),
YearPublished DATE
);*/

INSERT INTO BOOKS 
VALUES
( 1, 'The Road', 'Cormac McCarthy','Fiction', 19.33,'2006'),
( 2, 'The Girl with the Dragon tatto', 'Stieg Larsson','Mystery', 39.50,'2005');


INSERT INTO BOOKS 
VALUES
( 3, '1984', 'George Orwell','Fiction', 19.33,'1949'),
( 4, 'To Kill a monkeybird', 'Harper Lee','Fiction', 15,'1960'),
( 5, 'The Da Vinci Code', ' Dan Brown','Thriller', 49.60,'2003'),
( 6, 'Moby-Dick', ' Moby-Dick','Adventure', 13.20,'1951'),
( 7, 'The Historian', ' Elizabeth Kostova',' Historical Fiction', 79,'2005'),
( 8, 'The Shadow of the Wind', ' Carlos Ruiz','Mystery', 32.80,'2001'),
( 9, 'The Time Traveler''s Wife', 'Audrey Niffenegger*','Romance', 32,'2003'),
( 10, 'The Catcher in the Rye', ' J.D. Salinger','Fiction', 10,'1951'),
( 12, 'The Hunger Games', 'Suzanne Collins',' Dystopian Fiction', 85.30,'2008');

/* ALTER TABLE BOOKS 
MODIFY YearPublished YEAR; */
-- Since only YEAR that is accepted in the database mySQL valid range is (1901 to 2100)









