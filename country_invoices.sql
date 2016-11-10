select BillingCountry,
Count(InvoiceId) as "Invoice Count"
from Invoice
group by BillingCountry
