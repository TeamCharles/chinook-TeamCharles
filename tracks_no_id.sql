SELECT T.Name AS "Track", A.Title AS "Album", M.Name AS "Media Type", G.Name AS "Genre"
FROM Track AS T
JOIN Album AS A
	ON A.AlbumId = T.AlbumId
JOIN MediaType AS M
	ON T.MediaTypeId = M.MediaTypeId
JOIN Genre AS G
	ON G.GenreId = T.GenreId