-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
SELECT (InvoiceLine.InvoiceID) AS "Invoice#", (Track.Name) AS "Track Title Purchased", "$" || (Track.UnitPrice) AS "Track Price"
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId;