SELECT T.Name AS "Track Name", SUM(L.TrackId) AS "Number of Downloads"
FROM InvoiceLine AS L
JOIN Track AS T
	ON T.TrackId = L.TrackId
JOIN Invoice AS I
	ON I.InvoiceId = L.InvoiceId
GROUP BY T.TrackId
ORDER BY "Number of Downloads" DESC LIMIT 5