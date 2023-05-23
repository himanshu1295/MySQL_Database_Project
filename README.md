# MySQL_Database_Project

MySQL Database Project :-

Scenario :

Based in Chicago, Illinois, Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. The chefs draw inspiration from Italian, Greek, and Turkish culture and have a menu of 12–15 items that they rotate seasonally. The restaurant has a rustic and relaxed atmosphere with moderate prices, making it a popular place for a meal any time of the day.

Little Lemon is owned by two Italian brothers, Mario and Adrian, who moved to the United States to pursue their shared dream of owning a restaurant. To craft the menu, Mario relies on family recipes and his experience as a chef in Italy. Adrian does all the marketing for the restaurant and led the effort to expand the menu beyond classic Italian to incorporate additional cuisines from the Mediterranean region.


Prerequisites :

You must first create the Little Lemon database in MySQL. You must also have the Customers, Bookings and Courses tables created and populated with relevant data as shown below.


1. The code to create the database is as follows :

CREATE DATABASE IF NOT EXISTS Little_Lemon;


2. The code to use the database is as follows :

USE Little_Lemon;


3. The code to create the Customers table is as follows :

CREATE TABLE Customers(

CustomerID INT NOT NULL PRIMARY KEY, 

FullName VARCHAR(100) NOT NULL, 

PhoneNumber INT NOT NULL UNIQUE
);


4. The code to populate the Customers table is as follows :

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


The Customers table content is shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/20422fe3-a46b-4fbf-a688-6254e18da266)


5. The code to create the Bookings table is as follows :

CREATE TABLE Bookings(BookingID INT, BookingDate DATE,TableNumber INT, NumberOfGuests INT,CustomerID INT);


6. The code to populate the Bookings table with data is as follows :

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


The Bookings table is shown in the following screenshot:

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/0ad18348-f8fd-45a9-8dd3-4dc15953e681)


7. The code to create the restaurant Courses table is as follows :

CREATE TABLE Courses (CourseName VARCHAR(255) PRIMARY KEY, Cost Decimal(4,2));


8. The code to populate the restaurant's Courses table with data is as follows :

INSERT INTO Courses (CourseName, Cost) VALUES 

("Greek salad", 15.50), 

("Bean soup", 12.25), 

("Pizza", 15.00), 

("Carbonara", 12.50), 

("Kabasa", 17.00), 

("Shwarma", 11.30);


The Courses table is shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/98744776-faf6-42d1-aa29-c4bfb96720d4)


This activity has two main objectives :

1. Recap of all topics introduced in MySQL.

2. Provide experience with developing core database queries.


Task Instructions :

Task 1: Filter data using the WHERE Clause and Logical Operators.

Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. 

The expected output result should be the same as shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/32930a69-fdca-4636-8991-5c4ac9fd9e21)


Task 2: Create a JOIN Query.

Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11.

The expected output result should be the same as that shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/ad498afb-7fa7-40a2-9c45-47ff9cbbb2d2)


Task 3: Create a GROUP BY Query.

Create a SQL statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate. 

The expected output result should be the same as that shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/b5f6ddd4-f935-4fa8-a506-e4104ef65bf0)


Task 4: Create a REPLACE Statement.

Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. The expected output result should be the same as that shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/74fd9c82-c89e-4757-88f8-2d793a694d04)


Task 5: Create Constraints.

Create a new table called "DeliveryAddress" in the Little Lemon database with the following columns and constraints :

1. ID: INT PRIMARY KEY

2. Address: VARCHAR(255) NOT NULL

3. Type: NOT NULL DEFAULT "Private"

4. CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table

The expected table structure should be the same as that shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/fe234c4b-1e87-4bb9-9e3b-a1e3dd64e8a6)


Task 6: Alter Table Structure.

Create a SQL statement that adds a new column called 'Ingredients' to the Courses table.

1. Ingredients: VARCHAR(255)

Once the column has been added, the table's new structure should be the same as shown in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/ab37f42e-ca0f-4378-be6c-f5ecb9f5742e)


Task 7: Create a Subquery.

Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11.

The expected output result of your query should be similar to the output in the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/03085e66-2c5b-4b92-aeff-a09dd1675311)


Task 8: Create a Virtual Table.

Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.

Select all data from the BookingsView virtual table. The expected output result should be the same as shown in the following screenshot:

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/027a98eb-3737-4961-81dd-86174a5ca5af)


Task 9: Create a Stored Procedure.

Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". This parameter retrieves all data from the Bookings table based on the user input of the date.

After executing the query, call the "GetBookingsData" with '2021-11-13' as the input date passed to the stored procedure to show all bookings made on that date. The expected output of the CALL statement should be the same as the following screenshot :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/23d91c03-b081-44dd-9221-31ea3a3346bb)


Task 10: Use the String Function.

Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example:

1. ID: 10, 

2. Date: 2021-11-10, 

3. Number of guests: 5

The expected output result should be similar to the following screenshot (notice the table title "Booking Details") :

![image](https://github.com/himanshu1295/MySQL_Database_Project/assets/106751126/59d37770-4a52-46ec-aee7-c14cb15bca01)
