-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
-- Notes to self: InvoiceLine to get TrackId, then from Track get Albumid, from Album get ArtistId
SELECT ar.Name AS Artist, COUNT(il.TrackId) AS PurchaseCount
FROM Track t, InvoiceLine il, Album al, Artist ar
WHERE t.TrackId == il.TrackId
AND al.AlbumId == t.AlbumId
AND ar.ArtistId == al.ArtistId
GROUP BY Artist
ORDER BY PurchaseCount desc
LIMIT 3;