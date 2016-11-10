select FirstName || " " || LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
	from Customer
	join Invoice on Invoice.CustomerId = Customer.CustomerId
	where Country = "Brazil"