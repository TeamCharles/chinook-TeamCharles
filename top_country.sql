select BillingCountry, Max("Total Sales")
from (
	select Sum(Total) as "Total Sales", BillingCountry from Invoice
	group by BillingCountry
)