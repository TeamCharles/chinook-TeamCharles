select "Artist Name", "Sales Volume"
from (
	select Artist.Name as "Artist Name",
		Sum(InvoiceLine.Quantity) as "Sales Volume"
	from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
	join Album on Track.AlbumId = Album.AlbumId
	join Artist on Album.ArtistId = Artist.ArtistId
	group by Artist.ArtistId
)
order by "Sales Volume" desc
limit 3