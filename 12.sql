/*Provide a query that includes the track name with each invoice line item.*/

SELECT Track.Name, InvoiceLineId FROM InvoiceLine
JOIN Track on InvoiceLine.TrackId == Track.TrackId;
