select A.Title as "Album Title",
M.Name as "Media Type",
G.Name as "Genre"
from MediaType as M
Join track as T
	On M.MediaTypeId = T.MediaTypeId
Join album as A
	On T.AlbumId = A.AlbumId
Join genre as G
	On T.GenreId = G.GenreId
	
