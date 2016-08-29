/*Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.*/

SELECT Total, Customer.FirstName || ' ' || Customer.LastName AS 'Customer', Customer.Country, Employee.FirstName || ' ' || Employee.LastName AS 'Support Rep' FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId;
