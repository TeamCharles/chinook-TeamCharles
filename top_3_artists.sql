select Ar.Name,
ROUND(Sum(I.Total),2) as "Total"
from InvoiceLine as IL
join Track as T
	on T.TrackId = IL.TrackId
join Album as Al
	on Al.AlbumID = T.AlbumID
join Artist as Ar
	on Ar.ArtistId = Al.ArtistID
join Invoice as I
	on I.InvoiceId = IL.InvoiceId
group by Ar.Name
order by "Total"
desc
limit 3

