select Al.title as "Album", Tr.name as "Track Name", Mt.name as "Media Type", G.name as "Genre"
from Track as Tr 
join MediaType as Mt on Mt.mediatypeid = Tr.mediatypeid 
join Genre as G on G.genreid = Tr.genreid
join Album as Al on Al.albumid = Tr.albumid
group by AL.title
