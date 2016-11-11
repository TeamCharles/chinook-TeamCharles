select E.firstname || " " || E.lastname as "Sales Representative", count(C.customerid) as "Number of Assigned Customers"
from Employee as E
join Customer as C on C.supportrepid = E.employeeid
group by E.employeeid