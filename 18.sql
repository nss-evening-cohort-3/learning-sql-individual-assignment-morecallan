/*Provide a query that shows total sales made by each sales agent.*/

SELECT TOTAL(Invoice.Total) AS 'Sales Total', Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep' FROM Invoice
JOIN Customer ON Invoice.CustomerId == Customer.CustomerId
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Employee.EmployeeId;
