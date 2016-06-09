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
### Kasiteanalyysi - Conceptual modeling
* kasitteiden ja niiden yhteyksien selvittamisen prosessi
* kasite - ei vaadi jonkin muun olemassaoloa
* attribuutti - vaatii muun olemassaolon, esi. asiakasnumero
* vaiheet:
1) kartoita kasite-ehdokkaat kohdealeelta (problem domain)
2) karsi ehdokkaita
	i) onko tietosisalto valttamatonta
	ii) onko asia riittavan tarkea aihealueelle
3) Tunnista kasitteiden yhteydet
4) Maarittele yhteyksien osallistumisrajoitteet
5) Maarittele attribuutit

### Attribuuttien datatyypit
* Atribuutit tarvitsevat nimen ja datatyypin
* SQLite pyrkii valitsemaan tyypin dynaamisesti jos ei ole maaritelty
* Tyypillisia datatyyppeja:
1) varchar(n) n:n pituinen merkkijono
2) integer
3) float
4) date
5) timestamp

* Rajoitteet ja avaimet
* PRIMARY KEY ei saa koskaan olla null (SQLite luo automaattisesti)
* NOT NULL tells that the info is required
* UNIQUE
* CHECK (attr1 > 0)
* CONSTRAINT nameforconstraint CHECK (ehto AND ehto AND ...) This comes after the attributes
* LENGHT(merkkijono)
* FOREIGN KEY(sarake) REFERENCES ViitattavaTaulu(viitattavaSarake) After the atributes
* CREATE INDEX voi nopeuttaa hakuja erityisesti isoista aneistoista

Esim.
CREATE TABLE Opiskelija
(
    opiskelijanumero integer PRIMARY KEY,
    nimi varchar(200) NOT NULL,
    syntymävuosi date NOT NULL,
	email varchar(50) NOT NULL UNIQUE,
    pääaine varchar(50)
)




### SQLite
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
* JOIN is equivalent to INNER JOIN	
* LEFT JOIN instead of INNER JOIN gives also the rows of the tables that are empty
* RIGHT JOIN gives kind of the opposite to LEFT JOIN
* FULL JOIN gives everything
* OUTER JOIN then gives opposite to the INNER JOIN
* more details about JOINS: http://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins
* BETWEEN N AND M
* NOT BETWEEN N AND M 
* IN (1,2,3,...)
* NOT IN (1,2,3,...) tai voidaan luoda alikysely sulkeisiin)
* ORDER BY ASC/DESC
* LIMIT number OFFSET if you want to start from somewhere else than 1
* SELECT * FROM Tabl1 t1,... means that you rename the Table1 as t1
* SELECT attr1 FROM Table1 t1
	LEFT JOIN Table2 t2
	ON t1.attr1 = t2.attr2
	WHERE t2.attr3 IS null This gives all attr1's, which have null as attr3
Equivalent:
* SELCT attr1 FROM Table1 t1
	WHERE t1.attr1
		NOT IN (SELECT attr2 FROM Table2)
* EXISTS, NOT EXISTS jossain joukossa
* COUNT(sarake) laskee lukumaaran
* AVG(sarake) keskiarvo
* SUM() summa
* MIN(), MAX()
* GROUP BY sarake, sarake2 ... ryhmittelee sarakkeiden mukaan
* GROUP BY tarvitaan yleensa, jos lasketaan sarakkeista tunnuslukuja
* HAVING voidaan kayttaa GROUP BY jalkeen asettamaan ehtoja riveille
* There often is a way to check what are the tables but that depends on the SQL system
* SQLite: SELCT * FROM sqlite_master
* PRAGMA TABLE_INFO(Table1)
* PRAGMA foreign_keys = ON; laittaa foreign_keys tarkistukset paalle
* CREATE VIEW Nakymannimi AS kysely(siis SELECT...); luo valiaikaisen nakyman
* DROP VIEW poistaa nakyman


### Commands - DELETE, INSERT, CREATE TABLE, ALTER TABLE
* DELETE FROM Table1 WHERE attr1 = "Attr" Deletes info from table1
* INSET INTO Table1 (attr1, attr2,...) VALUES ('Attr1', 'Attr2',...) inserts new info into table1
* If the info goes into every column then the column names are not needed
* CREATE TABLE (attr1, attr2,...)
* ALTER TABEL Tabel1 ADD COLUMN/RENAME TO



Opiskelija (opiskelijanumero integer, nimi text, syntymävuosi integer, pääaine text)
Kurssi (kurssitunnus integer, nimi text, kuvaus text)
Kurssisuoritus (opiskelija integer, kurssi integer, päivämäärä date, arvosana integer, opintopistemäärä integer)
Tehtävä (tunnus integer, nimi text, kuvaus text)
Kurssitehtävä (tehtävä integer, kurssi integer) 


