WITH
	rainy
AS (
	SELECT
		DATE(date) rain_date
	FROM
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
)
SELECT
	trips.trip_id,
	trips.duration,
	DATE(trips.start_date)
FROM
	trips
JOIN
	rainy
ON
	DATE(trips.start_date) = rainy.rain_date
ORDER BY duration DESC
LIMIT 3;

SELECT
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available = 0 THEN 1 ELSE 0 END) availability
FROM	
	status
JOIN
	stations
ON
	stations.station_id = status.station_id
GROUP BY 1,2
Order BY availability DESC;

SELECT
	start_station,
	dockcount,
	COUNT(start_station)
FROM 
	trips
JOIN 
	stations
ON 
	stations.name=trips.start_station
GROUP BY 1, 2
ORDER BY 2 DESC;

WITH
	rainy
AS (
	SELECT
		DATE(date) rain_date
	FROM
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
),
	rain_trips
AS (
	SELECT
		trip_id,
		duration,
		DATE(trips.start_date) rain_trip_date
	FROM
		trips
	JOIN
		rainy
	ON
		DATE(trips.start_date) = rainy.rain_date
	ORDER BY duration DESC
)
SELECT
	rain_trip_date,
	MAX(duration) AS max_duration
FROM
	rain_trips
GROUP BY 1
ORDER BY max_duration DESC;