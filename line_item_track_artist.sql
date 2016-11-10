select InvoiceLineId, Track.Name as "Track Name", Artist.Name as "Artist Name"
from InvoiceLine
join Track on InvoiceLine.TrackId = Track.TrackId
join Album on Track.AlbumId = Album.AlbumId
join Artist on Album.ArtistId = Artist.ArtistId