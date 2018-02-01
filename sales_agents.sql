-- sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
SELECT FirstName || " " || LastName as "Name", Title
FROM Employee
WHERE Employee.Title is "Sales Support Agent";

-- sales_agents.sql: Provide a query showing only the Employees who in Sales.
SELECT FirstName || " " || LastName as "Name", Title
FROM Employee
WHERE Employee.Title LIKE "%Sales%";