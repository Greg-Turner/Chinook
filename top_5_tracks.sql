-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.
SELECT t.Name AS Song, COUNT(il.TrackId) AS PurchaseCount
FROM Track t, InvoiceLine il
WHERE t.TrackId == il.TrackId
GROUP BY t.TrackId
ORDER BY PurchaseCount desc
LIMIT 5;