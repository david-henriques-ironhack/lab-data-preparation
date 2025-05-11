
-- a) How many days are recorded in the dataset?
SELECT COUNT(Date) from austin_weather;

-- b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)
SELECT Date, TempHighF from austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

-- c) What is the average Humidity across all days? (column HumidityAvgPercent)
SELECT AVG(HumidityAvgPercent) from austin_weather;
-- d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?

SELECT SeaLevelPressureAvgInches, DewPointAvgF, Date from austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;
