SELECT c.firstname || " " || c.lastname as "Customer Name", e.firstname || " " || e.lastname as "Sales Representative", c.country, i.invoiceid, i.total as "Invoice Total"
from employee as e 
join customer as c on c.supportrepid = e.employeeid
join invoice as i on i.customerid = c.customerid
order by c.lastname