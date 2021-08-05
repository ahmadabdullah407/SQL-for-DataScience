/* Lets say we want to information from one table but we need to filter that information via another table in the same data base
This is actually pretty common in relational databases
Lets take an example from chinook data base 
Lets say we want 1st and last names of customers from Customers table,
 but we want only those customer names that have that have Invoice Tatal above 15$.*/
 
 /* Query 1:
 Our 1st query will be filtering through invoices table for Total above 15
and finding all the distunct customer Ids for total above 15.*/
SELECT DISTINCT CustomerId
FROM invoices
WHERE Total > 15 

/* Query2:
Our 2nd Query will be filtering through those Customers table for those CustomerIds
and finding all the 1st and last names for those customer Ids*/
SELECT CustomerId
,FirstName
,LastName
FROM Customers
WHERE CustomerId in (4,5,6,7,24,25,26,43,45,46,57)

/* Point to ponder here 
what if there were a large number of customerids that had total above 15.
Now this would be a lot time consuming*/

--Lets tackle this with subqueries
SELECT CustomerId
,FirstName
,LastName
FROM Customers
WHERE CustomerId in (SELECT DISTINCT CustomerId
FROM invoices
WHERE Total > 15);
-- Advice Start from inner most query and write toward outermost query bcz that is the way codeis executed too inner most query runs 1st.


