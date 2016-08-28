/* Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name. */


SELECT Employee.FirstName || ' ' || Employee.LastName AS 'Support Rep', InvoiceId, Invoice.CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId;
