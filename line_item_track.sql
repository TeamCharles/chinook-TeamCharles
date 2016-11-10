SELECT Name, InvoiceLineId
FROM Track
JOIN InvoiceLine AS L
	ON L.TrackId