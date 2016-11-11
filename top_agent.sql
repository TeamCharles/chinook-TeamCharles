select "Salesman of the Year", max("Total")
from (select E.firstname || " " || E.lastname as "Salesman of the Year",
round(sum(I.total),2) as "Total"
from Employee as E
join Customer as C on C.supportrepid = E.employeeid
join Invoice as I on I.customerid = C.customerid
group by e.employeeid)
