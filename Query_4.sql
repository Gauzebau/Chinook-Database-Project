# Query 4

SELECT count(g.GenreId) Track_Numb, g.Name Music_Genre
From Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
JOIN InvoiceLine l
ON i.InvoiceId = l.InvoiceId
JOIN Track t
ON t.TrackId = l.TrackId
JOIN Genre g
ON g.GenreId = t.GenreId
Group By g.GenreId
ORDER BY count(g.GenreId) DESC
LIMIT 5;
