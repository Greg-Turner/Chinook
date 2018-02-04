-- top_agent.sql: Which sales agent made the most in sales over all?
SELECT TopSales.Agent AS 'Sales Agent', '$' || MAX(TopSales.Sales) AS "Sales"
FROM
	(SELECT e.FirstName || " " || e.LastName AS 'Agent', ROUND(SUM(i.Total), 2) AS Sales
	FROM Employee e, Invoice i, Customer c
	WHERE i.CustomerId == c.CustomerId
	AND c.SupportRepId == e.EmployeeId
	GROUP BY Agent) TopSales;