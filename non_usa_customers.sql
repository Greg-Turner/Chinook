-- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName || " " || LastName as "Name", CustomerId, Country
FROM CUSTOMER
WHERE Country != "USA";
