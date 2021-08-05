--Creating Temporary Tables from existing table:
CREATE TEMPORARY TABLE table_name AS
SELECT *
FROM main_table
WHERE column_name=='desired_value'
-- You can also create a brand new temporary table like you created ordinary table

--Updating a table
UPDATE table_name
SET column_1 = new_value_1,
    column_2 = new_value_2
WHERE
    column_3 = 'row value you want' 
ORDER column_or_expression
LIMIT row_count OFFSET offset;
-- Deleting a table statements inside brackets are optional to give further control:
DROP TABLE [IF EXISTS] [schema_name.]table_name;
-- Deleting some values from a table
DELETE FROM table_name
WHERE search_condition
ORDER BY criteria
LIMIT row_count OFFSET offset;
-- ORDER BY and LIMIT are optional for now
/*The ORDER BY clause sorts the rows filtered by the 
preceding search_condition in the WHERE clause and the LIMIT
 clause specifies the number of rows that to be deleted.*/
 
 -- You can also see here how to make a single or multi line comment which is the very next lecture
