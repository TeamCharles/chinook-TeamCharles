select "Employee Name", MAX("Total Sales") as "Total Sales"
from (select E.FirstName || " " || E.LastName as "Employee Name",
sum(I.Total) as "Total Sales"
from Customer as C
join Invoice as I
	on C.CustomerId = I.CustomerId
join Employee as E
	on E.EmployeeId = C.SupportRepId
where I.InvoiceDate like "2009%")
