--------- CREATE TABLE 

CREATE TABLE simple_customers (
	CustomerId INTEGER PRIMARY KEY,
	Name TEXT,
	Address TEXT
);

CREATE TABLE simple_invoices (
	InvoiceId INTEGER PRIMARY KEY,
	CustomerId INTEGER,
	InvoiceDate DATE,
	BillingAddress TEXT,
	Total DECIMAL(10, 2),
	FOREIGN KEY (CustomerId) REFERENCES simple_customers(CustomerId)
);

--------- INSERT INTO
INSERT INTO simple_customers (CustomerId, Name, Address) 
VALUES
	(1, 'Customer 1', 'Address 1'),
	(2, 'Customer 2', 'Address 2'),
	(3, 'Customer 3', 'Address 3'),
	(4, 'Customer 4', 'Address 4'),
	(5, 'Customer 5', 'Address 5');

INSERT INTO simple_invoices (InvoiceId, CustomerId, InvoiceDate, BillingAddress, Total) 
VALUES
	(1, 2, '2018-01-01', 'Billing Address 2', 1.00),
	(2, 2, '2018-02-01', 'Billing Address 2', 2.00),
	(3, 3, '2018-03-01', 'Billing Address 3', 3.00),
	(4, 4, '2018-04-01', 'Billing Address 4', 4.00),
	(5, 6, '2017-05-01', 'Billing Address 6', 5.00);
