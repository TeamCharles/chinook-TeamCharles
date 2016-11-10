select FirstName || " " || LastName as "Full Name", CustomerId, Country
from customer
where Country != "USA"