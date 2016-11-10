SELECT COUNT(*) AS "Number of Invoices",
	BillingCountry
FROM Invoice
GROUP BY BillingCountry