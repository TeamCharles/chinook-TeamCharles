select i.invoicedate as "Invoice Date", count (i.invoiceid) as "Invoices Total"
from invoice as i
where i.invoicedate like "2009%"
union
select i.invoicedate as "Invoice Date", count (i.invoiceid) as "Invoices Total"
from invoice as i
where i.invoicedate like "2011%"