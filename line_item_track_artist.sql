-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT (InvoiceLine.InvoiceID) AS "Invoice#", (Track.Name) AS "Track Title Purchased", (Artist.Name) AS "Artist", "$" || (Track.UnitPrice) AS "Track Price"
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Album ON Track.AlbumId = Album.AlbumID
INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId;