select T.name as "Track Name", Ar.name "Artist", IL.invoicelineid as "Line Item"
from Track as T
join InvoiceLine as IL on IL.trackid = T.trackid
join Album as Al on Al.albumid = T.albumid
join Artist as Ar on Ar.artistid = Al.artistid
group by Ar.name