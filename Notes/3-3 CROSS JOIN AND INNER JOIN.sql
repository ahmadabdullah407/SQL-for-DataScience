/*Cartesian (Cross) Join
this join just takes all the rows from 1st table and multiplies it with therows of 2nd table
for example if table 1 has 20 entries and table 2 has 10 entries endresult table will have 200 entries.*/
SELECT *
FROM albums CROSS JOIN genres

/* Inner Join:
This join joins over a common key and only values that exist in both tables are choosen in this case*/
SELECT c.CustomerId
,c.FirstName
,c.LastName
FROM customers c INNER JOIN invoices i
ON c.CustomerId = i.CustomerId
WHERE i.Total>15

/* Inner join can be used over more than 2 tables*/
SELECT TrackId
,InvoiceId
,c.CustomerId
,c.FirstName
,c.LastName
FROM ((customers c INNER JOIN invoices i
ON c.CustomerId = i.CustomerId)
INNER JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId)
WHERE UnitPrice>=1

--another example getting the same result as previous lecture
SELECT DISTINCT c.CustomerId
,c.FirstName
,c.LastName
FROM ((customers c INNER JOIN invoices i
ON c.CustomerId = i.CustomerId)
INNER JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId)
WHERE UnitPrice>=1