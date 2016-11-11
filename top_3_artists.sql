select A.name as "Artist", sum(Il.quantity) as "Songs Sold"
from Artist as A
join Album as Al on  A.artistid = Al.artistid
join Track as Tr on Tr.albumid = Al.albumid
join InvoiceLine as Il on Il.trackid = Tr.trackid
group by A.artistid
order by "Songs Sold" desc
limit 3
