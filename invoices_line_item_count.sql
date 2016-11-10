SELECT I.*,
	COUNT(L.InvoiceId) AS "# Of Line Items"
FROM Invoice As I
JOIN InvoiceLine AS L
	ON I.InvoiceId = L.InvoiceId
GROUP BY I.InvoiceId