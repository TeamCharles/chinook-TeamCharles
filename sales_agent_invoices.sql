select Employee.FirstName || " " || Employee.LastName as "Sales Agent", Invoice.*
from Invoice
join Customer on Invoice.CustomerId = Customer.CustomerId
join Employee on Customer.SupportRepId = Employee.EmployeeId