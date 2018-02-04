-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
SELECT Song.Song AS Title, MAX(Song.PurchaseCount) AS 'Times Purchased'
FROM
(SELECT t.Name AS Song, COUNT(il.TrackId) AS PurchaseCount
FROM Track t, InvoiceLine il
WHERE t.TrackId == il.TrackId
GROUP BY t.TrackId) AS Song;