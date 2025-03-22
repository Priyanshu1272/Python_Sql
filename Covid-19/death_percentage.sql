use covid19;

SELECT `Country/Region`, (Deaths * 100.0 / Confirmed) AS DeathPercentage
FROM country_wise_latest
WHERE Confirmed > 0
UNION
SELECT 'Global' AS `Country/Region`, (SUM(Deaths) * 100.0 / SUM(Confirmed)) AS DeathPercentage
FROM country_wise_latest
WHERE Confirmed > 0;