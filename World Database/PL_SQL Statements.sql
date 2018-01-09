-- Retrieve everything from the country table
SELECT * 
FROM COUNTRY;

--  Retrieve all the information from a city in the USA that is sorted by the population, least to greatest
SELECT *
FROM CITY
WHERE CountryCode LIKE 'USA'
ORDER BY Population;

-- Retrieve the Name, Government Type & Head of State of every country
SELECT Name, GovernmentForm, HeadOfState
FROM COUNTRY;

-- Retrieve the city information based on ID if its available
DECLARE
	CURSOR cur_city (cur_id NUMBER) IS
	SELECT *
	FROM city
	WHERE id = cur_id;
BEGIN
	FOR record_member IN cur_city(&id) LOOP
		DBMS_OUTPUT.PUT_LINE('Name is: ' || record_member.Name);
		DBMS_OUTPUT.PUT_LINE('District is: ' || record_member.District);
		DBMS_OUTPUT.PUT_LINE('Population is: ' || record_member.Population);
	END LOOP;
END;
/