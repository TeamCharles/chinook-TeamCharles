SELECT T.Name AS "Track Name",
L.*
FROM InvoiceLine AS L
JOIN Track AS T
WHERE L.TrackId = T.TrackId