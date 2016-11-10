select BillingCountry, Sum(Total)
from Invoice
group by BillingCountry
