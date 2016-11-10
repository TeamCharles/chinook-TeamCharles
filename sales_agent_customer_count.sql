SELECT COUNT(C.CustomerId) AS "Customers Assigned", E.FirstName || " " || E.LastName AS "Employee"
FROM Employee AS E
JOIN Customer AS C
	ON C.SupportRepId = E.EmployeeId
WHERE E.Title LIKE "%sales%agent%"
GROUP BY E.EmployeeId