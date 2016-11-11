select MT.name as "Media Type", count(TR.trackid) as "Number of Tracks"
from MediaType as MT
join Track as TR on TR.mediatypeid = MT.mediatypeid
join InvoiceLine as IL on IL.trackid = TR.trackid
group by MT.mediatypeid
limit 1
