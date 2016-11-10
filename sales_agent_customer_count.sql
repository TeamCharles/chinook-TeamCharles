select E.EmployeeId,
Count(C.CustomerID) as "Total Customer Count"
from Employee as E
join Customer as C
	on C.SupportRepId = E.EmployeeId
group by E.EmployeeId