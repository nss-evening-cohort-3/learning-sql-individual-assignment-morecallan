/* How many Invoices were there in 2009 and 2011? */

SELECT COUNT(InvoiceDate) FROM Invoice
WHERE InvoiceDate LIKE '%2009%' OR InvoiceDate LIKE '%2011%'

/* What are the respective total sales for each of those years? */

SELECT TOTAL(Total) FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT TOTAL(Total) FROM Invoice
WHERE InvoiceDate LIKE '%2011%';
