select I.BillingCountry, C.FirstName || " " || C.LastName as "Customer Name",
Round(sum(I.Total),2) as "Total Purchase"
from Customer as C
join Invoice as I
	on C.Country = I.BillingCountry
group by I.BillingCountry
