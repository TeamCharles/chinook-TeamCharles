select Count(I.InvoiceDate) as "Count for 2009 Orders"
from Invoice as I
where I.InvoiceDate like "2009%" 

