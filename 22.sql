/*Provide a query that shows the # of customers assigned to each sales agent.*/

SELECT TOTAL(Customer.CustomerId) AS 'Total Customers', Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep' FROM Customer
JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId
GROUP BY Employee.EmployeeId;
