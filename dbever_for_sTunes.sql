--------- DATE 
SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM 
	invoices
WHERE 
	DATE(InvoiceDate) = '2009-01-03'
ORDER BY 
	Total DESC
LIMIT 10;

--------- INNER JOIN
SELECT *
FROM invoices
INNER JOIN customers
ON invoices.CustomerId = customers.CustomerId;

