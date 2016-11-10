select Customer.FirstName || " " || Customer.LastName as "Customer Name",
	Invoice.Total, Invoice.BillingCountry,
	Employee.FirstName || " " || Employee.LastName as "Employee Name"
from Invoice
join Customer on Customer.CustomerId = Invoice.CustomerId
join Employee on Employee.EmployeeId = Customer.SupportRepId