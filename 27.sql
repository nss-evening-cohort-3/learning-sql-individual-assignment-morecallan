/*Provide a query that shows the most purchased Media Type.*/

SELECT COUNT(InvoiceLine.InvoiceLineId) AS 'Number Sold', MediaType.Name AS 'Media Type' FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId == Track.TrackId
JOIN MediaType ON Track.MediaTypeId == MediaType.MediaTypeId
GROUP BY MediaType.MediaTypeId
ORDER BY 1 DESC
LIMIT 1;
