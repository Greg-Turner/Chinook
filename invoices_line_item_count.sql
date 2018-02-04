-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT i.InvoiceId AS INVOICE, COUNT(l.InvoiceLineId) AS ITEMS
FROM Invoice i, InvoiceLine l
WHERE i.InvoiceId == l.InvoiceId
GROUP BY i.InvoiceId;