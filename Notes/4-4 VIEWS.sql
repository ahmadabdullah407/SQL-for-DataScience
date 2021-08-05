/*VIEWS
A stored query can add or remove columns without changing schema
It is used to encapsulate queries
The view will be removed after database connection has ended.
Difference between a VIEW and a Temp table is that temporary table is a table stored in temp folder
But view is a query stored*/

--Syntax:
CREATE [TEMP] VIEW [IF NOT EXISTS]
view_name (column-name-list)
AS
select_statement;

--Example:
CREATE VIEW IF NOT EXISTS my_view
AS
SELECT
t.TrackId
,t.Name AS TrackName
,a.AlbumId
,a.Title
,a.ArtistId
,ar.Name AS ArtistName
FROM albums a 
INNER JOIN artists ar ON a.ArtistId = ar.ArtistId 
INNER JOIN tracks t ON t.AlbumId = a.AlbumId;

-- To view the data from view:
SELECT *
FROM view_name;

-- Dropping a view:
DROP VIEW view_name

/*Why use VIEWS:
VIEW can help simplify a complex data by doing it in steps
VIEWS are also helpful when you do not have permission to write or edit in a database*/
SELECT COUNT(TrackId)
,ArtistNAme
FROM my_view
GROUP BY ArtistName;