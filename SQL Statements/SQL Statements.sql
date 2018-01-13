--SET WRAP OFF
--SET linesize 200
/\ SELECT Statements /\

--Retrieves all the information from the country table
SELECT * FROM Country;

--Retrieves all the information from the country table and orders them by Name A-Z
SELECT * FROM Country ORDER BY Name;

--Retrieves the name and Life Expectancy from the country table and orders them by Name A-Z
SELECT Name, LifeExpectancy FROM Country ORDER BY Name;

--Retrieves the name and Life Expectancy from the country table and orders them by Name A-Z, this time creating custom names (known as aliases) for the output
SELECT Name AS "Name Of Country", LifeExpectancy AS "Life Expectancy" FROM Country ORDER BY Name;

--Retrives the number of rows from the country table
SELECT COUNT(*) FROM Country;

/\ SELECTing Rows /\

--Retrieves the name, contient, and region from the country table
SELECT Name, Continent, Region FROM Country;

--Retrieves the name, contient, and region from the country table, only where the continent is equal is Europe
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe';

--Retrieves the first 5 rows with the name, contient, and region from the country table, only where the continent is equal is Europe
SELECT *
FROM
( SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe') 
where ROWNUM <= 5;

/\ SELECTing Columns /\
--Retrieves the first 5 rows with all the information about a country that is ordered by the code
SELECT *
FROM
( SELECT * FROM Country ORDER BY Code ) 
where ROWNUM <= 5;

--Retrieves the first 5 rows with the name code, region, and population about a country that is ordered by the code
SELECT *
FROM
( SELECT Name, Code, Region, Population FROM Country ORDER BY Code ) 
where ROWNUM <= 5;

--Retrieves the first 5 rows with the name code, region, and population in a common format about a country that is ordered by the code, all with aliases
SELECT *
FROM
( SELECT Name AS "Country", Code AS "ISO", Region, TO_CHAR( Population, '999,999,999,999') AS "Population"
 FROM Country ORDER BY Code ) 
where ROWNUM <= 5;

/\ INSERTing Data /\
SELECT * FROM Customer;
INSERT INTO Customer VALUES (4, 'Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');
SELECT * FROM Customer;
INSERT INTO Customer (id, name, city, state) VALUES (5, 'Jimi Hendrix', 'Renton', 'WA');
SELECT * FROM Customer;

/\ UPDATEing Data /\
SELECT * FROM Customer;
UPDATE Customer SET Address = '123 Music Avenue', Zip = '98056' WHERE id = 5;
SELECT * FROM Customer;
UPDATE Customer SET Address = '2603 S Washington St', Zip = '98056' WHERE id = 5;
SELECT * FROM Customer;
UPDATE Customer SET Address = NULL, Zip = NULL WHERE id = 5;
SELECT * FROM Customer;

/\ DELETEing Data /\
SELECT * FROM Customer WHERE id = 4;
DELETE from Customer WHERE id = 4;
DELETE from Customer WHERE id = 5;
SELECT * FROM Customer;
