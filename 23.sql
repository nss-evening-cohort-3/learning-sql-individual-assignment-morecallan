/*Provide a query that shows the total sales per country.*/

SELECT TOTAL(Invoice.Total) AS 'Total Spent Per Country', Invoice.BillingCountry FROM Invoice
GROUP BY Invoice.BillingCountry;

/*Which country's customers spent the most?*/
