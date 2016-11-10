SELECT FirstName || "" || LastName as "Full Name", 
c.customerid, 
billingcountry,
invoicedate
from Customer as C
join Invoice as I on I.customerId = C.customerId
WHERE country = "Brazil"