/*Provide a query that shows the # of invoices per country. HINT: GROUP BY*/

SELECT COUNT(InvoiceId), BillingCountry From Invoice
GROUP BY BillingCountry;
