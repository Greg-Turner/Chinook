-- top_media_type.sql: Provide a query that shows the most purchased Media Type.
SELECT Format.MediaType AS 'Media Type', MAX(Format.Purchased) AS 'Times Purchased'
FROM
(SELECT m.Name AS MediaType, COUNT(m.MediaTypeId) AS Purchased
FROM Track t, InvoiceLine il, MediaType m
WHERE t.TrackId == il.TrackId
AND m.MediaTypeId == t.MediaTypeId
GROUP BY m.MediaTypeId) AS Format;