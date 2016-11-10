select Count(InvoiceLine.InvoiceLineId) as "Invoice Line Items", Invoice.*
from InvoiceLine
join Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId