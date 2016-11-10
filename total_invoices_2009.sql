SELECT Count(InvoiceDate) AS "Total 2009 Invoices"
FROM Invoice
WHERE InvoiceDate LIKE "2009-%"