select IL.InvoiceId,
IL.InvoiceLineId,
T.Name
from InvoiceLine as IL
join Track as T
	On IL.TrackId = T.TrackId
Order by IL.InvoiceId
