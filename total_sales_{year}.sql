-- total_sales_{year}.sql: What are the respective total sales for each of those years?
SELECT SUBSTR(InvoiceDate, 1, 4) AS "Year", "$" || SUM(Total) AS "Total Sales"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%" 
UNION
SELECT SUBSTR(InvoiceDate, 1, 4) AS "Year", "$" || SUM(Total) AS "Total Sales"
FROM Invoice
WHERE InvoiceDate LIKE "%2011%";