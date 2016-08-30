/*Which sales agent made the most in sales over all?*/

SELECT TOTAL(Invoice.Total) AS 'Sales Total', Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep' FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Employee.EmployeeId
ORDER BY "Sales Total" DESC
LIMIT 1;
