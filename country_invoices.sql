SELECT BillingCountry AS "Country",
COUNT (BillingCountry) AS "Total Invoices"
FROM Invoice
GROUP BY BillingCountry


