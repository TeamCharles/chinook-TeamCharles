SELECT C.FirstName || " " || C.LastName AS "Customer Name",
	I.Total,
	C.Country,
	E.FirstName || " " || E.LastName AS "Agent Name"
FROM Invoice AS I
JOIN Customer AS C
	ON C.CustomerId = I.InvoiceId
JOIN Employee AS E
	ON E.EmployeeId = C.SupportRepId
	