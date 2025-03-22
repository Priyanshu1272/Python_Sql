use covid19;
SELECT w.`Country/Region` AS Country,  
(c.Confirmed * 100.0) / w.Population AS InfectionRate 
FROM country_wise_latest c 
JOIN worldometer_data w 
ON c.`Country/Region` = w.`Country/Region` 
WHERE w.Population > 0 
ORDER BY InfectionRate DESC;


SHOW COLUMNS FROM worldometer_data;


SELECT (SUM(TotalCases) * 100.0) / SUM(Population) AS GlobalInfectionRate 
FROM worldometer_data 
WHERE Population > 0;




