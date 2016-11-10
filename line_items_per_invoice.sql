select distinct l.invoiceid as "Invoice Id", count (l.invoiceid) as "Number of Line Items"
from invoiceline as L
join invoice as I on I.invoiceid = L.invoiceid
group by l.invoiceid