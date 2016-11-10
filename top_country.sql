SELECT MAX("Total") AS "Total", BillingCountry
FROM (
SELECT SUM(Total) AS "Total", BillingCountry
FROM Invoice
GROUP BY BillingCountry
)