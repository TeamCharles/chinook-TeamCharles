select Max("Total Sales"), "Sales Agent"
from (
	select Sum(Invoice.Total) as "Total Sales",
		Employee.FirstName || " " || Employee.LastName as "Sales Agent"
	from Invoice
	join Customer on Invoice.CustomerId = Customer.CustomerId
	join Employee on Customer.SupportRepId = Employee.EmployeeId
)