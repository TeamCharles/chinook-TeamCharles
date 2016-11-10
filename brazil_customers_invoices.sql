SELECT FirstName || " " || LastName AS "Full Name", 
C.CustomerId, 
BillingCountry,
InvoiceDate
FROM Customer AS C
JOIN Invoice AS I ON I.CustomerId = C.CustomerId
WHERE Country = "Brazil"