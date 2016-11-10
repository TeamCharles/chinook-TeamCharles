SELECT Max("Total Sales"), "Sales Agent"
from (
  SELECT Sum(I.Total) AS "Total Sales", E.FirstName || " " || E.LastName AS "Sales Agent"
  FROM Invoice AS I
  JOIN Customer  AS C ON I.CustomerId = C.CustomerId
  JOIN Employee AS E ON C.SupportRepId = E.EmployeeId
  WHERE I.InvoiceDate LIKE "2009%"
  GROUP BY "Sales Agent"
)
