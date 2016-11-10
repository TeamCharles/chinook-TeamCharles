select T.name as "Track Name", IL.invoicelineid as "Line Item"
from Track as T
join InvoiceLine as IL on IL.trackid = T.trackid
group by T.name