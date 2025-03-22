use covid19;

SELECT `Country/Region`, (Recovered * 100.0 / Confirmed) AS RecoveryRate
FROM country_wise_latest
WHERE Confirmed > 0
ORDER BY RecoveryRate DESC
LIMIT 10;


