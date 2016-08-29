/*Provide a query that shows the total sales per country.*/

SELECT TOTAL(Invoice.Total) AS 'Total Spent Per Country', Invoice.BillingCountry FROM Invoice
GROUP BY Invoice.BillingCountry;

/*Which country's customers spent the most?*/

SELECT TOTAL(Invoice.Total) AS 'Total Spent Per Country', Invoice.BillingCountry FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY 1 DESC
LIMIT 1;

/* **** WORKED **** */
SELECT TOTAL(Invoice.Total) AS 'Total Spent Per Country', Invoice.BillingCountry FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY "Total Spent Per Country" DESC
LIMIT 1

/* **** DID NOT WORK WHAT THE HELL **** */
SELECT TOTAL(Invoice.Total) AS 'Total Spent Per Country', Invoice.BillingCountry FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY 'Total Spent Per Country' DESC
LIMIT 1
