#1
select count(distinct date) from austin_weather;

#2
select date from austin_weather where TempHighF = (select max(TempHighF) from austin_weather);

#3
select avg (HumidityHighPercent) from austin_weather 

4

select date from austin_weather where DewPointAvgF >28 order by SeaLevelPressureAvgInches desc limit 10