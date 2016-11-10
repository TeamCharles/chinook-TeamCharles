SELECT SUM(I.Total), E.FirstName || " " || E.LastName AS "Sales Agent"
FROM Invoice AS I
JOIN Customer AS C
	ON C.CustomerId = I.CustomerId
JOIN Employee AS E
	ON C.SupportRepId = E.EmployeeId
WHERE E.Title LIKE "%sales%agent%"
GROUP BY E.EmployeeId