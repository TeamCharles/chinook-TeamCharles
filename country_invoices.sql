select count (I.invoiceid) as "Number of Invoices", I.billingcountry as "Country"
from invoice as I
group by I.billingcountry

