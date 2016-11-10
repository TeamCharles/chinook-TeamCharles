select Count(InvoiceId), BillingCountry
from Invoice
group by BillingCountry