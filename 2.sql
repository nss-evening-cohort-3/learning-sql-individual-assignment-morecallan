/*Provide a query only showing the Customers from Brazil.*/


SELECT FirstName || ' ' || LastName AS 'Full Name', CustomerId, Country FROM Customer
WHERE Country == 'Brazil';
