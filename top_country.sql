-- top_country.sql: Which country's customers spent the most?
SELECT CountrySales.Country AS Country, '$' || MAX(CountrySales.Sales) AS Sales
FROM 
	(SELECT i.BillingCountry AS Country, ROUND(SUM(i.Total), 2) AS Sales
	FROM Invoice i
	GROUP BY Country) CountrySales;
