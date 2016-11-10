select e.firstname || " " || e.lastname as "Sales Representative", i.invoiceid as "Invoice"
from employee as e
join customer as C on c.supportrepid = e.employeeid
join invoice as I on I.customerid = C.customerid





