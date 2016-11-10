select Count(PlaylistTrack.TrackId) as "Number of Tracks", Playlist.Name as "Playlist Name"
from Playlist
join PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Playlist.PlaylistId