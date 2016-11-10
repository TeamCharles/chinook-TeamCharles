SELECT FirstName || "" || LastName as "Full Name", customerid, country
from customer
WHERE country = "Brazil"

