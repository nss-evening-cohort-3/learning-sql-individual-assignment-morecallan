/*Provide a query showing the invoices of customers who are from Brazil.*/


SELECT * FROM Invoice
JOIN (SELECT * FROM Customer WHERE Customer.Country == 'Brazil') AS 'BrazilCustomers'
ON BrazilCustomers.CustomerId == Invoice.CustomerId;
