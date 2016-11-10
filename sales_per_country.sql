SELECT I.BillingCountry AS "Country",
	COUNT(I.InvoiceId) AS "Total Sales"
FROM Invoice AS I
JOIN Customer AS C
	ON I.CustomerId = C.CustomerId
GROUP BY I.BillingCountry