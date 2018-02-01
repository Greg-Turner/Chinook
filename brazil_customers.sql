-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT FirstName || " " || LastName as "Name", CustomerId, Country
FROM Customer
WHERE Country IS "Brazil";