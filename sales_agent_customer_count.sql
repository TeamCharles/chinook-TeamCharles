SELECT E.FirstName || " " || E.LastName AS "Employee Name",
	SUM(C.CustomerId) AS "Total Customers"
	FROM Customer AS C
	JOIN Invoice AS I
		ON C.CustomerId = I.CustomerId
	JOIN Employee AS E
		ON C.SupportRepId = E.EmployeeId
	GROUP BY E.EmployeeId