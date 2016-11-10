SELECT T.Name, A.Name, InvoiceLineId
FROM Track AS T
JOIN InvoiceLine AS L
	ON L.TrackId
JOIN Artist AS A
    ON T.Name