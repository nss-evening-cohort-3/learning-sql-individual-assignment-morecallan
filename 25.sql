/*Provide a query that shows the top 5 most purchased tracks over all.*/

SELECT COUNT(InvoiceLine.InvoiceLineId) AS 'Number Sold', Track.Name AS 'Track Name' FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId == Track.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY 1 DESC
LIMIT 5;
