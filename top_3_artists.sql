SELECT Artist.Name as "Artist Name", SUM(L.Quantity) AS "Number of Downloads"
FROM InvoiceLine AS L
JOIN Track AS T
	ON L.TrackId = T.TrackId
JOIN Album AS A 
	ON A.AlbumId = T.AlbumId
JOIN Artist
	ON Artist.ArtistId = A.ArtistId
GROUP BY Artist.ArtistId
ORDER BY "Number of Downloads" DESC LIMIT 3