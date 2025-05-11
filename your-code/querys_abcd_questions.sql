use austin_weather;

SELECT COUNT(DISTINCT Date) 
FROM austin_weather;

SELECT Date, TempHighF
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

SELECT AVG(HumidityAvgPercent) 
FROM austin_weather;

SELECT Date, SeaLevelPressureAvgInches, DewPointAvgF
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;

