select InvoiceId, Count(InvoiceLineId) from InvoiceLine
group by InvoiceId