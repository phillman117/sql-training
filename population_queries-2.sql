-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent LIKE '%frica';


-- What was the total population of Oceania in 2005?
SELECT SUM(population)
FROM population_years
JOIN countries
	ON countries.id = population_years.country_id
WHERE countries.continent = 'Oceania'
	AND year = 2005;


-- What is the average population of countries in South America in 2003?
SELECT ROUND(AVG(population), 2)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE year = 2003
	AND continent = 'South America';


-- What country had the smallest population in 2007?
SELECT countries.name,
	population_years.population
FROM countries
LEFT JOIN population_years
	ON population_years.country_id = countries.id
WHERE population_years.population IS NOT NULL
	AND population_years.year = 2007
ORDER BY population_years.population
LIMIT 5;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT ROUND(AVG(population_years.population), 2) AS 'Average Population',
	countries.name
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';


-- What was the total population of each continent in 2010?
SELECT SUM(population_years.population) AS 'Total Population',
	countries.continent
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE population_years.year = 2010
GROUP BY countries.continent;





/* */
	
/**/

SELECT year
FROM population_years
GROUP BY year;





