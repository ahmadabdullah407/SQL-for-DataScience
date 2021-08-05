/*Aliases and Self Join:
Just like we used aliases for column names (using AS) we can do the same with table names
We have been using Aliases in previous lectures
Aliases are very important for self joins(where a table is joined with itself)*/
SELECT A.ArtistId AS artist1
,B.ArtistId AS artist2
,A.Name
FROM artists A, artists B
WHERE A.Name = B.Name
ORDER BY A.Name

/*Left Join:
Left join is a join in which all values from left are included in the result,
 no matter if there is a match or not with the values in right side table*/
SELECT InvoiceId
,c.CustomerId
,c.FirstName
,c.LastName
FROM invoices i LEFT JOIN customers c
ON c.CustomerId = i.InvoiceId -- just an experiment to fail
ORDER BY InvoiceId

/*Right Join:
Right join is a join in which all values from Right are included in the result,
 no matter if there is a match or not with the values in left side table*/
SELECT InvoiceId
,c.CustomerId
,c.FirstName
,c.LastName
FROM invoices i RIGHT JOIN customers c
ON c.CustomerId = i.InvoiceId
ORDER BY InvoiceId

/* Full Outer Join:
Full Outer Join is a join in which all values from left and right tables are included in the result,
 no matter if there is a match or not with the values in the values on both tables
 However full outer join and right join are not supported on sqlite but they are supported on others*/
SELECT InvoiceId
,c.CustomerId
,c.FirstName
,c.LastName
FROM invoices i FULL OUTER JOIN customers c
ON c.CustomerId = i.BillingPostalCode
ORDER BY InvoiceId

/* Union:
Union Joins all the values from different tables
YOu need to have same structure for union to work(i.e. each select stament should have same number of columns)
columns must have similar data type
columns in each select statement must be in same order*/
SELECT FirstName,LastName
FROM customers
UNION
SELECT FirstName,LastName
FROM employees
ORDER BY FirstName

/* UnionAll:
UnionALl is same as Union but it does not eliminate duplicate entries
Also unionall does not need a distinct sorting function*/
