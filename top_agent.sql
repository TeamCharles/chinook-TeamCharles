SELECT "Employee Name", MAX("Total Sales") AS "Total Sales"
FROM (SELECT E.FirstName || " " || E.LastName AS "Employee Name",
	  ROUND(SUM(I.Total), 2) AS "Total Sales"
	  FROM Customer AS C
	  JOIN Invoice AS I
		ON C.CustomerId = I.CustomerId
	  JOIN Employee AS E
		ON E.EmployeeId = C.SupportRepId
	  GROUP BY E.EmployeeId)