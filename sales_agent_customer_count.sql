select Employee.FirstName || " " || Employee.LastName as "Sales Agent",
	Count(Customer.CustomerId) as "Customer Count"
from Customer
join Employee on Customer.SupportRepId = Employee.EmployeeId
group by "Sales Agent"