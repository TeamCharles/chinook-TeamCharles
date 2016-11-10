select p.Name as "Name",
PLT.PlaylistId as "# of Tracks"
from playlist as p
join PlaylistTrack as PLT
	on p.PlaylistId = PLT.PlaylistId
group by p.Name