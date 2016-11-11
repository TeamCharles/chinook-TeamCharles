select  I.invoiceid as "Invoices Id", count(IL.invoicelineid) as "Number of Invoice Line Id"
from Invoice as I
join InvoiceLine as IL on IL.invoiceid = I.invoiceid
group by IL.invoiceid