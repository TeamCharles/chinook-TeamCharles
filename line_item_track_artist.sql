select T.Name as "Title of Song",
Ar.Name as "Artist Name"
from InvoiceLine as IL
join Track as T
	On IL.TrackId = T.TrackId
Join Album as A
	On T.AlbumId = A.AlbumId
Join Artist as Ar
	On A.ArtistId = Ar.ArtistId
Order by IL.InvoiceId