SELECT T.Name AS "Track Name",
A.Title AS "Album Name",
M.Name AS "Media Type",
G.Name AS "Genre Name"
FROM Track AS T
JOIN Album AS A
	ON T.AlbumId = A.AlbumId
JOIN Genre AS G
	ON T.GenreId = G.GenreId
JOIN MediaType AS M
	ON T.MediaTypeId = M.MediaTypeId