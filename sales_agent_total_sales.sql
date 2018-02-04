-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
SELECT e.FirstName || " " || e.LastName AS 'Sales Agent', '$' || ROUND(SUM(i.Total), 2) AS Sales
FROM Employee e, Invoice i, Customer c
WHERE i.CustomerId == c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;