-- WHERE clause operator
SELECT column1_name, column2_name
FROM table_name
WHERE column3_name (operator) value; -- Use the operator at the '(operator)' position. Also it is not necessary to use the columns you selected 
/*Example: Uncomment below example to check
CREATE TEMPORARY TABLE Female AS
SELECT * 
FROM student
WHERE gender<>'Male'
SELECT * FROM Female*/

-- Filtering with a Range of Values:
SELECT column1_name,column2_name
FROM table_name
WHERE column3_name BETWEEN value1 AND value2;
/*Example: Uncomment below example to check
CREATE TEMPORARY TABLE range AS
SELECT *
FROM student
WHERE total_score BETWEEN 400 AND 500;*/

-- Filtering No Value:
SELECT column1_name,column2_name
FROM table_name
WHERE column3_name ISNULL/NOTNULL;
/*Example:
CREATE TEMPORARY TABLE aa AS
SELECT *
FROM student
WHERE total_score NOTNULL;*/

-- Filtering with IN Operator (Selcting Multiple Random Values not range):
SELECT column1_name,column2_name
FROM table_name
WHERE column3_name IN (value1,value2,value3);
/*Example:
CREATE TEMPORARY TABLE random AS
SELECT *
FROM student
WHERE name IN ('Jolly','Sara','Mice');*/

-- Filtering with OR Operator: (Chosing either of the conditions note that database will not evaluate second condition if 1st is met)
SELECT column1_name,column2_name
FROM table_name
WHERE column3_name = value1 OR column3_name=value2;
/*Example:
CREATE TEMPORARY TABLE or_use AS
SELECT *
FROM student
WHERE age = 20 OR age = 22;*/

-- Filtering with AND Operator: (Chosing both codition database will evaluate both conditions and then generate the result)
SELECT column1_name,column2_name
FROM table_name
WHERE column3_name = value1 AND column4_name=value2;
/*Example:
CREATE TEMPORARY TABLE and_use AS
SELECT *
FROM student
WHERE age = 22 AND total_score > 500;*/

/*Filtering with both OR AND operators together:
 Note that database will process AND before OR but it is always
a good practise to use parenthisis to keep track of
order*/

-- NOT Operator:
SELECT column1_name,column2_name
FROM table_name
WHERE NOT column3_name = value1 AND NOT column4_name=value2;
/*Example:
CREATE TEMPORARY TABLE not_use AS
SELECT *
FROM student
WHERE NOT age = 22 AND NOT total_score > 500;*/

-- Using Wild_cards(LIKE Operator):
SELECT column1_name
FROM table_name
WHERE column1_name LIKE 'anystring%anyotherstring'; 
/*You can use _ instead of % too also and can use it in different ways to get string after/before/between/beforeandafter any specific string*/
/*Example:
SELECT name FROM student
WHERE name LIKE 'J%'*/


