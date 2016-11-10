select "Media Type", Max("Media Quantity") as "Sales Volume"
from (
	select MediaType.Name as "Media Type", Sum(InvoiceLine.Quantity) as "Media Quantity"
	from InvoiceLine
	join Track on InvoiceLine.TrackId = Track.TrackId
	join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
	order by MediaType.MediaTypeId
)