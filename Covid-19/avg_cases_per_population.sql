USE covid19;

SELECT 
    `Country/Region`,
    TotalCases AS Confirmed,
    Population,
    Tot Cases/1M pop AS Infection_Rate_Per_Million
FROM worldmeter_data
WHERE 
    Population > 0
    AND TotalCases IS NOT NULL
    AND Tot Cases/1M pop IS NOT NULL
ORDER BY 
    Tot Cases/1M pop DESC
LIMIT 10;