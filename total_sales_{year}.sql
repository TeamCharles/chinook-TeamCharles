select i.invoicedate as "Invoice Date", sum (i.Total) as "Total Sales"
from invoice as i
where i.invoicedate like "2009%"
union
select i.invoicedate as "Invoice Date", sum (i.Total) as "Total Sales"
from invoice as i
where i.invoicedate like "2011%"