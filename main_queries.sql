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
FROM simple_invoices si  
INNER JOIN simple_customers sc  
ON si.CustomerId = sc.CustomerId;

--------- LEFT OUTER JOIN
SELECT * 
FROM simple_invoices si  
LEFT OUTER JOIN simple_customers sc  
ON si.CustomerId = sc.CustomerId;

--------- RIGHT OUTER JOIN (NOT IMPLEMENTED IN SQLite)
--------- OVERRIDE THIS BEHAVIOUR USING "LEFT OUTER JOIN" and swap tables
SELECT * 
FROM simple_customers sc
LEFT OUTER JOIN simple_invoices si
ON si.CustomerId = sc.CustomerId;

--------- MULTI JOIN
SELECT e.FirstName, e.LastName, e.EmployeeId, c.FirstName, c.LastName, c.SupportRepId, i.CustomerId, i.Total
FROM invoices i 
INNER JOIN customers c 
ON i.CustomerId = c.CustomerId
INNER JOIN employees e 
ON c.SupportRepId = e.EmployeeId
ORDER BY i.Total DESC
LIMIT 10;

--------- NULL, IS | NOT
SELECT 
	ar.ArtistId AS [ArtistId from Artists Table], 
	al.ArtistId  AS [ArtistId from Albums Table],
	ar.Name AS [Artist Name],
	al.Title AS [Album Title]
FROM artists ar 
LEFT JOIN albums al 
ON ar.ArtistId = al.ArtistId
WHERE al.AlbumId is NULL;

--------- 
SELECT
	al.Title AS [Album Title],
	tr.Name AS [Track Name],
	ge.Name AS [Genre]
FROM 
	albums AS al
JOIN
	tracks AS tr
ON
	al.AlbumId = tr.AlbumId
JOIN
	genres AS ge
ON 
	ge.GenreId = tr.GenreId;


























