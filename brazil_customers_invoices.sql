SELECT FirstName || " " || LastName, 
	C.CustomerId, 
	BillingCountry,
	InvoiceDate
FROM Customer as C
JOIN Invoice  as I ON I.CustomerId = C.CustomerId
WHERE Country = "Brazil"