select InvoiceId, 
Count(InvoiceId) as "Number of Line Items"
from InvoiceLine as IL
group by InvoiceId