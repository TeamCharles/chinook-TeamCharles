select FirstName || " " || LastName as FullName, CustomerId, Country
	from Customer
	where Country = "Brazil"