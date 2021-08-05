-- Math Operations:
SELECT column1_name
,column2_name
,column3_name
,(column4_name-column3_name)/column2_name AS new_column_name -- creates a new column remember the order
FROM table_name
/*Example:
SELECT *
,total_score/age AS Score_wrt_age
,total_score-age AS something
FROM student*/

-- Aggregate Functions:

-- Average:
SELECT AVG(column_name) AS new_column_name
FROM table_name -- This function does not consider NULL values.
/*Example:
Select AVG(age) as total
From sqlcourse*/

-- Count:
SELECT COUNT(*/column_name) AS new_column_name
FROM table_name -- This function does consider NULL values in case of sterick otherwise does not.
/*Example:
SELECT COUNT(*) AS total
FROM sqlcourse
SELECT COUNT(age) AS total
FROM sqlcourse*/

--MIN and MAX:
SELECT MAX(column_name) AS maximum
,MIN(column_name) AS minimum
FROM table_name --This function does not consider NULL values.
/*Example:
SELECT MAX(age) AS maximum
,MIN(age) AS minimum
FROM sqlcourse*/

--SUM Aggregate FUNCTION:
SELECT SUM(column1_name*column2_name) AS new_column_name
FROM table_name -- This function does not consider NULL values.
WHERE condition
/*Example:
SELECT SUM(age) AS mult
FROM sqlcourse 
WHERE name LIKE 'J%'*/

-- Using distinct in Aggregate Function:
SELECT COUNT(DISTINCT column_name) AS new_column_name
FROM table_name
/*Note:
distinct removes duplicates
Cannot use Distinct in COUNT(*)*/

-- GROUP BY Aggregate Functions
SELECT column1_name,column2_name
,AGGFUNC(column_name) AS new_column_name
FROM table_name
WHERE condition before group by
GROUP BY column1_name,column2_name
HAVING AGGFUNC(column_name) condition after group by
ORDER BY some_column_name
/*Note:
WHERE is executed before group by(row level filtering)
Having is executed after group by(group level filtering)
group by does not sort by itself you need order by to sort 
You can group by multiple columns at once*/
/*Example:
SELECT gender,age
,COUNT(*) AS Num
FROM sqlcourse
WHERE total_score>=450
GROUP BY gender,age
HAVING COUNT(*) < 2
ORDER BY name
