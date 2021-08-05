/* STRFTIME:
To extract certain parts of a date and time string*/
SELECT BirthDate
,STRFTIME('%Y',BirthDate) AS Year
,STRFTIME('%m',BirthDate) AS Month
,STRFTIME('%d',BirthDate) AS Day
FROM employees

/* Using Now to get current date or time:*/
SELECT DATE('NOW') AS Today

SELECT DATETIME('NOW') AS Today

SELECT TIME('NOW') AS Today

SELECT STRFTIME('%Y %m %d','now') 

SELECT STRFTIME('%H %M %S %s', 'now') -- hour,minute,second,millisecond

--Finding age:
SELECT BirthDate
,DATE('now')-Birthdate AS Age
FROM employees