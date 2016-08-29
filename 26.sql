/*Provide a query that shows the top 3 best selling artists.*/

SELECT COUNT(InvoiceLine.InvoiceLineId) AS 'Number Sold', Artist.Name AS 'Artist Name' FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId == Track.TrackId
JOIN Album ON Track.AlbumId == Album.AlbumId
JOIN Artist ON Album.ArtistId == Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY 1 DESC
LIMIT 5;
