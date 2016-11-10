SELECT E.FirstName || " " || E.LastName AS "Employee",
	ROUND(SUM(I.Total), 2) AS "Total Sales"
FROM Customer AS C
JOIN Employee AS E
	ON C.SupportRepId = E.EmployeeId
JOIN Invoice AS I
	ON C.CustomerId = I.CustomerId
GROUP BY E.FirstName