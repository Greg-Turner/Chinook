-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
-- The resultant table should include the Sales Agent's full name.
SELECT Employee.FirstName || " " || Employee.LastName as "Name", Invoice.InvoiceId
FROM Employee
INNER JOIN Invoice ON Customer.SupportRepId = Invoice.CustomerId
INNER JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId