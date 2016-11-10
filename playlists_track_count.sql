select PL.name as "Playlist Name", count (PLT.trackid) as "Track Amount"
from playlist as PL
join playlisttrack as PLT on PLT.playlistid = PL.playlistid
group by PL.name


