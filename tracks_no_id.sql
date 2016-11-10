select Track.Name as "Track Name", Album.Title as "Album Title",
	MediaType.Name as "Media Type", Genre.Name as "Genre Name"
from Track
join Album on Album.AlbumId = Track.AlbumId
join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
join Genre on Genre.GenreId = Track.GenreId