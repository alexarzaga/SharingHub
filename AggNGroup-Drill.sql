SELECT
	date,
	maxtemperaturef as max_temp,
	zip
FROM
	weather
GROUP BY 
	zip, date, maxtemperaturef
ORDER BY
	max_temp DESC
LIMIT 1;

SELECT
	start_station,
	COUNT(start_station) as station_count
FROM
	trips
GROUP BY
	start_station
ORDER BY
	station_count DESC;
	
SELECT 
	*
FROM	
	trips
ORDER BY
	duration ASC
LIMIT 22;

SELECT 
	end_station,
	ROUND(AVG(duration), 2) as avg_duration
FROM 
	trips
GROUP BY
	end_station
ORDER BY
	avg_duration DESC;