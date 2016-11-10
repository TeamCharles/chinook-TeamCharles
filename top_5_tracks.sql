select "Sales Volume", "Track Name"
from (
	select Track.Name as "Track Name", Sum(InvoiceLine.Quantity) as "Sales Volume"
	from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
	group by Track.TrackId
)
order by "Sales Volume" desc
limit 5