-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT a.Title AS 'Album', t.Name AS 'Track Title', m.Name AS 'Media', g.Name AS 'Genre'
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId == a.AlbumId
AND t.MediaTypeId == m.MediaTypeId
AND t.GenreId == g.GenreId
ORDER BY Album;
