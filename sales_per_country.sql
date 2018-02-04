-- sales_per_country.sql: Provide a query that shows the total sales per country.
SELECT i.BillingCountry AS Country, ROUND(SUM(i.Total), 2) AS Sales
FROM Invoice i
GROUP BY Country
ORDER BY Sales desc;