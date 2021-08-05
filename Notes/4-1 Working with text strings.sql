/* Concatenations:
Joining two strings together*/
SELECT FirstName
,LastName
,Title
,FirstName||' '||LastName||' ('||Title||')' -- Use || to concatenate two strings together also note different servers use different concatenation signs like +. 
FROM employees

/* Trimming:
Trims the leading or trailing space from a string i.e. TRIM,RTRIM(righttrim),LTRIM(Lefttrim)*/
SELECT TRIM("   You the best      ") AS TrimmedString

/*SubString:
Returns the specified number of characters from a particular position of a given string i.e. SUBSTR*/
SELECT FirstName
,SUBSTR(FirstNAme,3,4) -- ColumnName, Character Position starts from 1 not 0, Number of characters want to retrieve
FROM employees

/*Upper and Lower Case i.e. UPPER,LOWER,UCASE:
Used to make a string upper or lower case*/
SELECT FirstName
,UPPER(FirstName) AS Uppercased -- Sometimes used as UCASE in some servers.
,LOWER(FirstName) AS Lowercased
FROM employees
