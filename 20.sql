/*Which sales agent made the most in sales in 2010?*/

SELECT TOTAL(Invoice.Total) AS 'Sales Total', Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep' FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
WHERE strftime('%Y', Invoice.InvoiceDate ) == '2010'
GROUP BY Employee.EmployeeId
ORDER BY 'Sales Total' DESC
LIMIT 1;


SELECT Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep',
MAX(SalesTotal)
FROM (SELECT TOTAL(Invoice.Total) AS SalesTotal
FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
WHERE strftime('%Y', Invoice.InvoiceDate ) == '2010'
GROUP BY Employee.EmployeeId
), Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
