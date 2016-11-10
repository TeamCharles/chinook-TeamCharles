SELECT "Media Type", MAX("Purchases") AS "Purchases"

FROM (SELECT M.Name AS "Media Type", SUM(IL.Quantity) AS "Purchases"
FROM InvoiceLine AS IL
JOIN Track AS T
	ON T.TrackId = IL.TrackId
JOIN MediaType AS M
	ON M.MediaTypeId = T.MediaTypeId
GROUP BY M.Name
ORDER BY "Purchases" DESC)