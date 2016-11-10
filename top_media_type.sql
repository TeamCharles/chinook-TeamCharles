SELECT COUNT(T.TrackId) AS "Downloads", M.Name
FROM InvoiceLine AS L
JOIN Track AS T
	ON L.TrackId = T.TrackId
JOIN MediaType AS M
	ON M.MediaTypeId = T.MediaTypeId
GROUP BY M.MediaTypeId 
LIMIT 1