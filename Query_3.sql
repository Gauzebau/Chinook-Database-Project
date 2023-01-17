# Query 3

SELECT count(p.PlaylistId) Playlist_Numb, m.Name Used_Media
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
JOIN Track t
ON t.TrackId = pt.TrackId
JOIN MediaType m
ON m.MediaTypeId = t.MediaTypeId
GROUP By m.MediaTypeId
ORDER BY Playlist_Numb;