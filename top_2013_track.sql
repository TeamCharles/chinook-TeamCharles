SELECT MAX("Number of Downloads") AS "Number of Downloads", "Track Name"
FROM (
SELECT T.Name AS "Track Name", SUM(L.TrackId) AS "Number of Downloads"
FROM InvoiceLine AS L
JOIN Track AS T
	ON T.TrackId = L.TrackId
JOIN Invoice AS I
	ON I.InvoiceId = L.InvoiceId
WHERE I.InvoiceDate LIKE "2013%"
GROUP BY T.TrackId
)