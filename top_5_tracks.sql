SELECT T.Name AS "Track Name", SUM(IL.Quantity) AS "Total Sold"
FROM InvoiceLine AS IL
JOIN Track AS T
	ON IL.TrackId = T.TrackId
GROUP BY T.Name LIMIT 5
	