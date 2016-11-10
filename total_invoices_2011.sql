select Count(I.InvoiceDate) as "Count for 2011 Orders"
from Invoice as I
where I.InvoiceDate like "2011%" 

