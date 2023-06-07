CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL
);
/*Creating the Books table*/
CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(255),
  AuthorID INT ,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

/*Inserting data into the authors table*/
INSERT INTO Authors (AuthorID, FirstName, LastName)
VALUES (1, 'John', 'Doe'),
       (2, 'Jane', 'Smith'),
       (3, 'David', 'Johnson');

/*inserting data into the books table*/


INSERT INTO Books (BookID, Title, AuthorID)
VALUES (1, 'Book1', 1),
       (2, 'Book2', 2),
       (3, 'Book3', 3);
	   Select * from Books;
	   select * from Authors;
/*Retrieving one book from Books*/
SELECT *
FROM Books
WHERE Title = 'Book2';
SELECT * FROM Authors;


/*Updating Authors last name*/

UPDATE Authors
SET LastName = 'Smithson'
WHERE AuthorID = (SELECT AuthorID FROM Books WHERE Title = 'Book1');
SELECT * FROM Authors;


/*Deleting author with AuthorID3 and all their associated books from the database*/
DELETE FROM Authors WHERE AuthorID = 3;
DELETE FROM Books WHERE AuthorID = 3;

Select * from Authors;

select * from Books;
/*Counting total numbeer of books in the bookstore*/
SELECT COUNT(*) AS TotalBooks
FROM Books;
/*retrieving all books along with their authors first name and last name from books*/
SELECT Books.BookID, Books.Title, Authors.FirstName, Authors.LastName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;
SELECT * FROM Books;






