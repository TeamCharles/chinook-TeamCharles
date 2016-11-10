SELECT InvoiceId AS "Invoice Id",
COUNT(InvoiceId) AS "Total Items"
FROM InvoiceLine
GROUP BY InvoiceId 