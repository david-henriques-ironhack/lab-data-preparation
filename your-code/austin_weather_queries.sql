-- Query a
SELECT COUNT(*) AS total_days
FROM austin_weather;

-- Query b
SELECT Date, TempHighF
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

-- Query c
SELECT AVG(HumidityAvgPercent) AS average_humidity
FROM austin_weather;

-- Query d
SELECT Date, SeaLevelPressureAvgInches, DewPointAvgF
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;
