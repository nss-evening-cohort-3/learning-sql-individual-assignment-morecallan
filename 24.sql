/*Provide a query that shows the most purchased track of 2013.*/

/* WOULD WORK BUT ALL TRACKS WERE ONLY PURCHASED ONCE??*/
SELECT COUNT(InvoiceLine.InvoiceLineId), Track.Name FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId == Track.TrackId
WHERE strftime('%Y', Invoice.InvoiceDate ) == "2013"
GROUP BY InvoiceLine.TrackId
ORDER BY 1 DESC
LIMIT 1;
