## SQLite
These are just my personal to collect my thoughts in one place
* SQL - Structured Query Language 
* used to store and hadle data in databases
* Tables are the basic unit where the data is stored. 
* Observations on the row and variables in the columns


### Some commands
* CREATE TABLE
* INSERT INTO
* SELECT * FROM <>
* SELECT var1, var2, var4 FROM table;
* SELECT DISTINCT var1 FROM table;
* WHERE var1 > 8; (e.g)
* WHERE name LIKE "se_en"; _ here means any character
* % in previous kind of statements means:
* A% begins with A, %a ends with a, %a% contains a. Note: not case sensitive
* WHERE year BETWEEN 1990 AND 2000 AND genre = 'comedy';
* ORDER BY imdb_rating DESC (/ ASC)
* LIMIT <number> : limits the number of rows
* UPDATE
* ALTER TABLE
* DELETE FROM
* SELECT COUNT(*) FROM table1; counts the observations
* GROUP BY variables; groups observations by variable
* SELECT SUM(variable) FROM table; Also MIN(), MAX(), AVG(), ROUND()
* SELECT MAX(variable) FROM table
* SELECT name, category, MAX(downloads)
FROM fake_apps
GROUP BY category; this gives us the maxs of the all categories

### Multiple tables combined
* CREATE TABLE artists(id INTEGER PRIMARY KEY, name TEXT); here the PRIMARY KEY is the new that links the tables
* There can be only one PRIMARY KEY column. All values are unique and none are NULL
* SELECT albums.name, albums.year, artists.name FROM albums, artists; selecting stuff from multiple tables simultaneously
* SELECT * FROM albums
JOIN artists 
ON albums.artist_id = artists.id; Well does what you could imagine it to does
* JOIN combines the tables only if the condition is met
* LEFT JOIN combines the tables and leaves NULL's if the conditions are not met
* SELECT
albums.name AS 'Album'; here the column name is changed


## Notes from Tietokantojen perusteet kurssilta
* SQL is case insensitive
* Still:
* commands in ALL CAPS
* Tables with Capital letter
* And attributes with small caps
* Yhden suhde moneen (1-N)
* Monen suhde moneen (N-N) We want to simplify these to one to many connections by
adding new table, which links these attributes to the both original tables
* Yhden suhde yhteen (1-1) 
* LIKE '%txt%' this sequence
* LIKE '%T_y%' now _ means any character

### Commands - SELECT
* SELECT selects certain columns from a table
* SELECT * means that we choose all the columns. 
* SELECT * FROM Table1 meaans that we choose all the columns from Table1
* SELECT column1 FROM Table1 gives the column
* SELECT DISTINCT column1 FROM Table1 gives each datum only once
* SELECT * FROM Table1 WHERE attr1 = 'Attr' gives us all the rows of Table1 weher the attr1 is 'Attr' 
* LOWER(), UPPER() can be used to change the caps in the table queries
* SELECT * FROM Table1 WHERE attr1 LIKE '%a%' rows of the Table one with attributes containing 'a'
* AND and OR are the usual logical operators
* SELECT * FROM Table1, Table2 WHERE Table1.attr1 = Table2.attr1 Returns a combination of the tables
where attr1 of the Table1 and Table2 are the same
* SELECT Table1.attr1 FROM.... if there is ambiquity about the column between Tables
* SELECT Opiskelija.nimi AS opiskelija FROM Opiskelija this is a way to rename columns in a result
* SELECT * FROM Table1 INNER JOIN Table2 ON atribute1 ... is alternative to WHERE
This: 
SELECT Kurssi.nimi AS Kurssi, Opiskelija.nimi AS Opiskelija
    FROM Kurssi, Kurssisuoritus, Opiskelija
    WHERE Kurssi.kurssitunnus = Kurssisuoritus.kurssi
        AND Kurssisuoritus.opiskelija = Opiskelija.opiskelijanumero;
is equivalent to this: 
SELECT Kurssi.nimi AS Kurssi, Opiskelija.nimi AS Opiskelija
    FROM Kurssi
    INNER JOIN Kurssisuoritus
        ON Kurssi.kurssitunnus = Kurssisuoritus.kurssi
    INNER JOIN Opiskelija		
* LEFT JOIN instead of INNER JOIN gives also the rows of the tables that are empty
* RIGHT JOIN gives kind of the opposite to LEFT JOIN
* FULL JOIN gives everything
* OUTER JOIN then gives opposite to the INNER JOIN
* more details about JOINS: http://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins
* BETWEEN N AND M
* NOT BETWEEN N AND M 
* IN (1,2,3,...)
* NOT IN (1,2,3,...)
* ORDER BY ASC/DESC
* LIMIT number OFFSET if you want to start from somewhere else than 1


### Commands - DELETE, INSERT
* DELETE FROM Table1 WHERE attr1 = "Attr" Deletes info from table1
* INSET INTO Table1 (attr1, attr2,...) VALUES 'Attr1', 'Attr2', ... inserts new info into table1
* If the info goes into every column then the column names are not needed


