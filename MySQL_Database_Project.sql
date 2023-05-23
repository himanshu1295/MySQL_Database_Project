-- MySQL Database Project
-- The code to create the database is as follows:
CREATE DATABASE IF NOT EXISTS Little_Lemon;
-- The code to see if the database is created:
SHOW DATABASES;
-- The code to use the database is as follows:
USE Little_Lemon;
-- The code to create the Customers table is as follows:
CREATE TABLE Customers(CustomerID INT NOT NULL PRIMARY KEY, FullName VARCHAR(100) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
-- The code to see if the table is created:
SHOW TABLES;
-- The code to populate the Customers table is as follows:
INSERT INTO Customers(CustomerID, FullName, PhoneNumber) VALUES 
(1, "Vanessa McCarthy", 0757536378), 
(2, "Marcos Romero", 0757536379), 
(3, "Hiroki Yamane", 0757536376), 
(4, "Anna Iversen", 0757536375), 
(5, "Diana Pinto", 0757536374),     
(6, "Altay Ayhan", 0757636378),      
(7, "Jane Murphy", 0753536379),      
(8, "Laurina Delgado", 0754536376),      
(9, "Mike Edwards", 0757236375),     
(10, "Karl Pederson", 0757936374);
-- The code to see Customers table :
SELECT * FROM Customers;
-- The code to create the Bookings table is as follows:
CREATE TABLE Bookings(BookingID INT, BookingDate DATE,TableNumber INT, NumberOfGuests INT,CustomerID INT); 
-- The code to populate the Bookings table with data is as follows:
INSERT INTO Bookings 
(BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) 
VALUES
(10, '2021-11-10', 7, 5, 1),  
(11, '2021-11-10', 5, 2, 2),  
(12, '2021-11-10', 3, 2, 4), 
(13, '2021-11-11', 2, 5, 5),  
(14, '2021-11-11', 5, 2, 6),  
(15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1),  
(17, '2021-11-12', 5, 2, 2),  
(18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6),  
(20, '2021-11-14', 5, 2, 3),  
(21, '2021-11-14', 3, 2, 4);
-- The code to see Bookings table:
SELECT * FROM Bookings;
-- The code to create the restaurant Courses table is as follows:
CREATE TABLE Courses(CourseName VARCHAR(255) PRIMARY KEY, Cost Decimal(4,2));
-- The code to populate the restaurant's Courses table with data is as follows:
INSERT INTO Courses (CourseName, Cost) VALUES 
("Greek salad", 15.50), 
("Bean soup", 12.25), 
("Pizza", 15.00), 
("Carbonara", 12.50), 
("Kabasa", 17.00), 
("Shwarma", 11.30);
-- The code to see Courses table :
SELECT * FROM Courses;
-- The code to see all the created tables.
SHOW TABLES;
-- Filter data using the WHERE clause and logical operators.
SELECT * 
FROM Bookings 
WHERE BookingDate BETWEEN '2021-11-11' AND '2021-11-13';
-- Create a JOIN Query.
SELECT Customers.FullName, Bookings.BookingID 
FROM Customers RIGHT JOIN Bookings 
ON Customers.CustomerID = Bookings.CustomerID 
WHERE BookingDate = '2021-11-11';
-- Create a GROUP BY Query.
SELECT BookingDate, COUNT(BookingDate) 
FROM Bookings 
GROUP BY BookingDate;
-- Create a REPLACE Statement and then see the changes made.
REPLACE INTO Courses (CourseName, Cost) VALUES ("Kabasa", 20.00);
SELECT * FROM Courses;
-- Create Constraints and then see the columns created in the table 'DeliveryAddress'.
CREATE TABLE DeliveryAddress(     
    ID INT PRIMARY KEY,     
    Address VARCHAR(255) NOT NULL,     
    Type VARCHAR(100) NOT NULL DEFAULT "Private",     
    CustomerID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
SHOW COLUMNS FROM DeliveryAddress;
-- Alter Table Structure and then see the columns from Courses.
ALTER TABLE Courses ADD COLUMN Ingredients VARCHAR(255);
SHOW COLUMNS FROM Courses;
-- Create a Subquery.
SELECT FullName 
FROM Customers 
WHERE (SELECT CustomerID FROM Bookings WHERE Customers.CustomerID = Bookings.CustomerID and BookingDate = "2021-11-11");
-- Create a Virtual Table and then see the Virtual Table.
CREATE VIEW BookingsView AS SELECT BookingID, BookingDate, NumberOfGuests FROM Bookings WHERE NumberOfGuests > 3 AND BookingDate < "2021-11-13";
SELECT * FROM BookingsView;
-- Create a Stored Procedure and then call the Stored Procedure.
CREATE PROCEDURE GetBookingsData (InputDate DATE) 
SELECT * 
FROM Bookings 
WHERE BookingDate = InputDate;
CALL GetBookingsData ("2021-11-13");
-- Use the String Function.
SELECT CONCAT("ID: ", BookingID,', Date: ', BookingDate,', Number of guests: ', NumberOfGuests) AS "Booking Details" FROM Bookings;
