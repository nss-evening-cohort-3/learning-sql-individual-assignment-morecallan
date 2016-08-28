/*Which sales agent made the most in sales in 2009? HINT: MAX*/

SELECT TOTAL(Invoice.Total) AS 'Sales Total', Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep' FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
WHERE strftime('%Y', Invoice.InvoiceDate ) == '2009'
GROUP BY Employee.EmployeeId
ORDER BY Invoice.Total DESC
LIMIT 1;
