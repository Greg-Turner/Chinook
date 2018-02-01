-- unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
Select distinct BillingCountry
from Invoice
where BillingCountry is not null;