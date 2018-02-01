-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
SELECT COUNT(InvoiceId) AS "2009 & 2011 Total Invoices"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "%2011%"