SELECT SUM(Total) AS "Total", BillingCountry
FROM Invoice
GROUP BY BillingCountry