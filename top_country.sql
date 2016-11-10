SELECT "Country", MAX("Total Sales") AS "Total Sales"
FROM (SELECT I.BillingCountry AS "Country",
	SUM(I.Total) AS "Total Sales"
FROM Invoice AS I
JOIN Customer AS C
	ON I.CustomerId = C.CustomerId
GROUP BY I.BillingCountry)