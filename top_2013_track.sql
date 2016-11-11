select "Most Sold Track", Max("Units Sold")
from(
select TR.name as "Most Sold Track", count(IL.trackid) as "Units Sold"
from Track as TR
join InvoiceLine as IL on IL.trackid = TR.trackid
join Invoice as I on I.invoiceid = IL.invoiceid
where I.invoicedate like ("2013%")
group by TR.trackid
)
