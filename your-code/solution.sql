/* Use weather one */
USE weather_awstin;

/* Have a generic view */
SELECT *
FROM austin_weather;

/*
 - a) How many days are recorded in the dataset? 1319 days
 - b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF) 107 F
 - c) What is the average Humidity across all days? (column HumidityAvgPercent) 66,57
 - d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
*/

/* How many days are recorded in the dataset? */
SELECT COUNT(date)
FROM austin_weather;

/* What is the day with the Highest Temperature in Fahrenheit */
SELECT date, TempHighF
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

/* What is the average Humidity across all days */
SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

/* Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 */
SELECT *
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;
