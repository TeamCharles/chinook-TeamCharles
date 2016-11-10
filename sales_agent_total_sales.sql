select Sum(Invoice.Total), Employee.FirstName || " " || Employee.FirstName as "Sales Agent"
from Invoice
join Customer on Invoice.CustomerId = Customer.CustomerId
join Employee on Employee.EmployeeId = Customer.SupportRepId
group by EmployeeId