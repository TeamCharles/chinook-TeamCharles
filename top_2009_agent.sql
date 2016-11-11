select "Salesman of the Year", max("Year 2009 Total")
from (select E.firstname || " " || E.lastname as "Salesman of the Year",
sum(I.total) as "Year 2009 Total"
from Employee as E
join Customer as C on C.supportrepid = E.employeeid
join Invoice as I on I.customerid = C.customerid
where I.invoicedate like "2009%"
group by e.employeeid)
