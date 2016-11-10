SELECT COUNT(InvoiceLineId) AS "Number of Items for Each Invoice"
FROM InvoiceLine
GROUP BY InvoiceId 