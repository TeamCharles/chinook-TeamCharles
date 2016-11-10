select FirstName || " " || LastName as "Full Name",
	c.CustomerId,
	BillingCountry,
	InvoiceDate
from customer as c
join Invoice as i on i.customerId = c.customerid
where Country = "Brazil"