select "Country", max("Total Sales")
from
(
select C.country as "Country", sum(I.total) as "Total Sales"
from customer as C
join Invoice as I on I.customerid = C.customerid
group by c.country
)