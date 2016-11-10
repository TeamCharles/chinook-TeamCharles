SELECT Count(InvoiceDate) AS "Total 2011 Invoices"
FROM Invoice
WHERE InvoiceDate LIKE "2011-%"