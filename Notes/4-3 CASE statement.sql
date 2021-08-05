/*Simple CASE Statement:
Case statement is like if else statement*/
SELECT EmployeeId
,FirstName
,LastName
,City
,CASE City --input expression name of the column for case
	WHEN 'Calgary' /* Value for the columns works as boolean expression if true*/ THEN 'Calgary'
	ELSE 'Other' /* If false use this*/
END Binary -- Name of the case columns
FROM employees
ORDER BY EmployeeId
/* note; in above example we transformed a cetagorical data to a binary data using case statement*/

/*Search CASE Statement:*/
SELECT TrackId
,Name
,Bytes
,CASE
    WHEN Bytes <= 3000000 THEN 'small' -- also you can add a column name here too and value from than column is added there is an example below for this
    WHEN Bytes >= 3000001 AND Bytes <= 5000000 THEN 'medium'
    WHEN Bytes >= 5000001 THEN 'large'
ELSE NULL -- you can just remove this line too
END bytescetagory
FROM tracks

--reference example for above code
SELECT TrackId
,Name
,Bytes
,CASE
    WHEN Bytes <= 3000000 THEN TrackId
    WHEN Bytes >= 3000001 AND Bytes <= 5000000 THEN Name
    WHEN Bytes >= 5000001 THEN 'large'
END bytescetagory
FROM tracks