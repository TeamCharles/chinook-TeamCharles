select Sum(I.Total) as "Sales for 2009 Orders"
from Invoice as I
where I.InvoiceDate like "2009%" 

