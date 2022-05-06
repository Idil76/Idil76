
-- retrieve life expentancy over the years 
SELECT * FROM sql_hr.`life_expectancy_who 3`;
SELECT life_expectancy, year FROM sql_hr.`life_expectancy_who 3`;

-- retrieve adult mortality and infant mortality 
SELECT * FROM sql_hr.`life_expectancy_who 3`;
SELECT adult_mortality, infant_deaths FROM sql_hr.`life_expectancy_who 3`;

-- retrieve infant mortality and life expectancy 
SELECT * FROM sql_hr.`life_expectancy_who 3`;
SELECT adult_mortality, life_expectancy FROM sql_hr.`life_expectancy_who 3`;

-- find maximum life expectancy 
SELECT MAX(life_expectancy) AS 'MAXIMUM LIFE_EXPECTANCY' FROM sql_hr.`life_expectancy_who 3`;

-- Total adult mortality 
SELECT SUM(adult_mortality) AS 'Total adult_mortality' FROM sql_hr.`life_expectancy_who 3`;

-- Number of infant_deaths 
SELECT COUNT(DISTINCT infant_deaths) AS 'Number of infant_deaths' FROM sql_hr.`life_expectancy_who 3`;

-- Average BMI
SELECT AVG(BMI) AS 'Average BMI' FROM sql_hr.`life_expectancy_who 3`;

-- Average life expectancy by year 
SELECT year, AVG(life_expectancy) AS 'Average life_expectancy' FROM sql_hr.`life_expectancy_who 3`
GROUP BY year;

-- Average adult mortality on life expectancy 
SELECT life_expectancy, AVG(adult_mortality) AS 'Average adult_mortality' FROM sql_hr.`life_expectancy_who 3`
GROUP BY life_expectancy
ORDER BY 2;

-- CASE WHEN 

SELECT adult_mortality, life_expectancy, 
CASE
WHEN life_expectancy < 70 THEN 'Less than 50 years' -- condition 1
WHEN life_expectancy > 100 THEN 'More than 100 years' -- condition 2
ELSE 'Between 70 and 100 years'
END AS 'Average life_expectancy'
FROM sql_hr.`life_expectancy_who 3`;
