SELECT "Track Name", MAX("Total Sold") AS "Total Sold"

FROM (SELECT T.Name AS "Track Name",
 SUM(IL.Quantity) AS "Total Sold"
FROM Invoice AS I
JOIN InvoiceLine AS IL
	ON I.InvoiceId = IL.InvoiceId
JOIN Track As T
	ON IL.TrackId = T.TrackId
WHERE I.InvoiceDate LIKE "2013-%"
GROUP BY T.TrackId)
