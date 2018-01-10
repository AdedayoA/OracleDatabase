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