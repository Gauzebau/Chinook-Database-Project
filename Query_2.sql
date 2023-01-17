# Query 2

SELECT sum(i.Quantity) Qty_Sold, a.ArtistId, a.Name Artist_name, i.UnitPrice
FROM Artist a
JOIN Album b
ON a.ArtistId = b.ArtistId
JOIN Track t
ON b.AlbumId = t.AlbumId
JOIN InvoiceLine i
ON t.TrackId =i.TrackId
GROUP by b.AlbumId
ORDER BY sum(i.Quantity) DESC
LIMIT 10;
