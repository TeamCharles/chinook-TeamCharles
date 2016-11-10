SELECT AR.Name AS "Artist Name", SUM(IL.Quantity) AS "Total"
FROM InvoiceLine As IL
JOIN Track AS T
	ON IL.TrackId = T.TrackId
JOIN Album AS A
	ON T.AlbumId = T.AlbumId
JOIN Artist AS AR
	ON AR.ArtistId = A.ArtistId
GROUP BY AR.ArtistId
ORDER BY "Total" DESC LIMIT 3