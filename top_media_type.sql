select COUNT(T.TrackId) as "Downloads", M.Name
from InvoiceLine as L
join Track as T
	ON T.TrackId = L.TrackId
join MediaType as M
	ON M.MediaTypeId = T.MediaTypeId
group by M.MediaTypeId 
limit 1
