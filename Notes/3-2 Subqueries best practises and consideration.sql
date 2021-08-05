/* Keep in mind 
-There is no limit to number of subqueries you can have
-Performance slows when you nest too deeply
-Subquery selects can only retrieve a single column.*/

-- Its a good practise to indent subqueries according to their placement
-- www.poorsql.com 
-- it is a good website to indent some poorly indented sql queries
-- it makes queries easier to read and troubleshoot.
SELECT CustomerId
,FirstName
,LastName
FROM Customers
WHERE CustomerId IN 
    (SELECT DISTINCT CustomerId
    FROM invoices
    WHERE InvoiceId IN 
        (SELECT DISTINCT InvoiceId
        FROM invoice_items
        WHERE UnitPrice >= 1));
		
/*Using Subqueries for calculations:
lets say we want to find number of invoices for each customer
now we shall need to use sub queries in SELECT statement*/
SELECT FirstName
,LastName
,	(SELECT COUNT(*) AS Orders
    FROM invoices
    WHERE invoices.CustomerId = Customers.CustomerId)
AS Orders
FROM Customers
ORDER BY FirstName