--This query creates a table named Customers
CREATE TABLE Customers (
 CustomerId NUMBER PRIMARY KEY,
 CustomerName VARCHAR2(30),
 Country VARCHAR2(30),
 );

--This query inserts values into the Customers

INSERT INTO Customers(CustomerId,CustomerName,Country) VALUES(1,'Priya','India'),(2,'Dhivya','America');
INSERT INTO Customers(CustomerId,CustomerName) VALUES(1,'Delna');


