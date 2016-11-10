select E.FirstName || " " || E.LastName as "Employee Name",
	InvoiceId,
	InvoiceDate,
	Total
from Invoice as I
join Customer as C
	ON C.CustomerId = I.CustomerId
join Employee as E
	ON E.EmployeeId = C.SupportRepId
where E.Title like "%sales%agent%"
order by E.LastName
