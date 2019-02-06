SELECT
    trip_id,
    start_date
FROM
    trips
WHERE 
    duration > 500
ORDER BY duration DESC;

SELECT
    *
FROM
    stations
WHERE 
    station_id = 84;
	
SELECT
    mintemperaturef as min_temp
FROM
    weather
WHERE 
    zip = 94301 AND
    events LIKE 'Rain';