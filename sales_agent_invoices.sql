SELECT E.FirstName || " " || E.LastName as "Employee Name",
	InvoiceId,
	InvoiceDate,
	Total
FROM Invoice AS I
JOIN Customer AS C
	ON C.CustomerId = I.CustomerId
JOIN Employee AS E
	ON E.EmployeeId = C.SupportRepId
WHERE E.Title LIKE "%sales%agent%"
ORDER BY E.LastName
