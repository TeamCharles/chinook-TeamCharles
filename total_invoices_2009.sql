SELECT count(*) AS "Number of Invoices in 2009"
FROM Invoice
WHERE InvoiceDate LIKE "2009%"