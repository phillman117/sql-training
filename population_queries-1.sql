-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

--Find largest population size for Gabon
SELECT * FROM population_years
WHERE country = "Gabon"
ORDER BY population DESC
LIMIT 1;

-- Find the least populated countries in 2005 
SELECT * FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;

-- Find DISTINCT countries with a population > 100 million in 2010
SELECT * FROM population_years
WHERE year = 2010
	AND population > 100
ORDER BY population DESC;

-- How many countries have the word "islands" in their name?
SELECT DISTINCT country FROM population_years
WHERE country LIKE '%Islands%';

--What is the difference in Indonesian population between 2000 and 2010?
SELECT * FROM population_years
WHERE country = 'Indonesia'
	AND year = 2000
	OR  country = 'Indonesia'
		AND year = 2010;
	
