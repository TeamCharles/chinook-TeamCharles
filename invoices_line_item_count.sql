select I.InvoiceId as "Invoice Id",
Count(IL.InvoiceId) as "LineItem Count"
from Invoice as I
join InvoiceLine as IL
	on I.InvoiceId = IL.InvoiceId
group by I.InvoiceId