SELECT I.InvoiceId, COUNT(L.InvoiceLineId) AS "Line Item Count"
FROM Invoice AS I
JOIN InvoiceLine AS L
	ON L.InvoiceId = I.InvoiceId
GROUP BY I.InvoiceId