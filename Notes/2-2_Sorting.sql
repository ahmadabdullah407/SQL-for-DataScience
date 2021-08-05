-- Sorting(ORDER BY):
SELECT column1_name,column2_name
FROM table_name
ORDER BY column3_name/number (ASC/DESC),column4_name/number (ASC/DESC);
/* Note: 
-You can Use Multiple columns.
-You can specify ascending(ASC) or descending(DESC) although by default its ASC.
-You can also use column number.
-Sorting will start from leftmost column.
-ORDER BY statement is always at the end.*/

/* Example:
SELECT * FROM student
ORDER BY 5 DESC, name ASC;*/

