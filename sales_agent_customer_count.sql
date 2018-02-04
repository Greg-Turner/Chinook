-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
SELECT e.FirstName || ' ' || e.LastName AS Agent, COUNT(c.CustomerId) AS Customers
FROM Employee e, Customer c
WHERE e.EmployeeId == c.SupportRepId
GROUP BY e.EmployeeId;