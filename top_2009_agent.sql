SELECT "Employee Name", MAX("Total Sales") AS "Total Sales"
FROM (SELECT E.FirstName || " " || E.LastName AS "Employee Name",
	  SUM(I.Total) AS "Total Sales"
	  FROM Customer AS C
	  JOIN Invoice AS I
		ON C.CustomerId = I.CustomerId
	  JOIN Employee AS E
		ON E.EmployeeId = C.SupportRepId
	  WHERE I.InvoiceDate LIKE "2009-%"
	  GROUP BY E.EmployeeId)



