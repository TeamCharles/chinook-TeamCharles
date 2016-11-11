select "Track Name", "Total Sales"
from
(
select TR.name as "Track Name", count(IL.trackid) as "Total Sales"
from Track as TR
join InvoiceLine as IL on IL.trackid = TR.trackid
join Invoice as I on I.invoiceid = IL.invoiceid
group by TR.trackid
)
order by "Total Sales" desc
limit 5 