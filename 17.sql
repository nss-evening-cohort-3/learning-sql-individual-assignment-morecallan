/*Provide a query that shows all Invoices but includes the # of invoice line items.*/

SELECT Invoice.*, COUNT(InvoiceLine.InvoiceId) AS 'Invoice Lines' FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId;
