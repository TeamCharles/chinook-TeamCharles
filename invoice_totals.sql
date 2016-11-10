select I.InvoiceId as "Invoice ID",
	C.FirstName || " " || C.LastName as "Customer Name",
	I.Total,
	I.BillingCountry as "Country",
	E.FirstName || " " || E.LastName as "Sales Agent Name"
from Invoice as I
join Customer as C
	ON C.CustomerId = I.CustomerId
join Employee as E
	On E.EmployeeId = C.SupportRepId

