-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
SELECT COUNT(InvoiceId) AS "Total Invoices", (BillingCountry) AS "Country"
FROM Invoice
GROUP BY BillingCountry;