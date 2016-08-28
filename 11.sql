/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY*/

SELECT COUNT(InvoiceLineId), InvoiceId From InvoiceLine
GROUP BY InvoiceId;
