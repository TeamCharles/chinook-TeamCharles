select E.firstname || " " || E.lastname as "Sales Support Rep", round(sum (I.total), 2) as "Total"
from Employee as E
join Customer as C on C.supportrepid = E.employeeid
join Invoice as I on I.customerid = C.customerid
where E.title like "sales s%"
group by e.employeeid

 