select "Track Name", "Units Sold"
from
(
select TR.name as "Track Name", count(IL.trackid) as "Units Sold"
from Track as TR
join InvoiceLine as IL on IL.trackid = TR.trackid
join Invoice as I on I.invoiceid = IL.invoiceid
group by TR.trackid
)
order by "Units Sold" desc
limit 5 