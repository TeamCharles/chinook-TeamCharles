SELECT T.Name AS "Track Name",
AR.Name AS "Artist",
L.*
FROM InvoiceLine AS L
JOIN Track AS T
ON L.TrackId = T.TrackId
JOIN Album AS AL
ON T.AlbumId = AL.AlbumId 
JOIN Artist AS AR
ON Al.ArtistId = AR.ArtistId


