/* Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37. */

SELECT COUNT(InvoiceLineId) From InvoiceLine
WHERE InvoiceId == 37;

/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY*/

SELECT COUNT(InvoiceLineId), InvoiceId From InvoiceLine
GROUP BY InvoiceId;
