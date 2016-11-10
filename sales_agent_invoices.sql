SELECT E.FirstName || " " || E.LastName as "Employee Full Name",
	I.*
FROM Invoice AS I
JOIN Customer AS C
	ON C.CustomerId = I.CustomerId
JOIN Employee AS E
	ON E.EmployeeId = C.SupportRepId
WHERE E.Title LIKE "%sales support agent%"
ORDER BY E.LastName

