select E.EmployeeId,
Round(Sum(I.Total),2) as "Total Spent by Customer"
from Employee as E
join Customer as C
	on C.SupportRepId = E.EmployeeId
join Invoice as I
	on I.CustomerId = C.CustomerId
group by E.EmployeeId


