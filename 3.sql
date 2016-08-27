/*Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.*/


SELECT FirstName || ' '||  LastName AS 'Customer Name', Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM (SELECT * FROM Customer WHERE Country == 'Brazil') AS 'BrazilCustomers'
JOIN  Invoice ON BrazilCustomers.CustomerId == Invoice.CustomerId;
