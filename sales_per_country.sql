select BillingCountry, Sum(Total) as "Total Sales"
from Invoice
group by BillingCountry