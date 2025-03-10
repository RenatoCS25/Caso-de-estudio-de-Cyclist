
USE BikeSharing;

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Bicicletas';

-- revisando si hay valores vacios en las columnas 
SELECT 
    COUNT(*) - COUNT(ride_id) AS missing_ride_id,
    COUNT(*) - COUNT(rideable_type) AS missing_rideable_type,
    COUNT(*) - COUNT(started_at) AS missing_started_at,
    COUNT(*) - COUNT(ended_at) AS missing_ended_at, -- 
    COUNT(*) - COUNT(start_station_name) AS missing_start_station_name, -- 1073951
    COUNT(*) - COUNT(start_station_id) AS missing_start_station_id, -- 1073951
    COUNT(*) - COUNT(end_station_name) AS missing_end_station_name, -- 1104653
    COUNT(*) - COUNT(end_station_id) AS missing_end_station_id, -- 1104653
    COUNT(*) - COUNT(start_lat) AS missing_start_lat, -- 7232
    COUNT(*) - COUNT(start_lng) AS missing_start_lng, -- 7234
    COUNT(*) - COUNT(end_lat) AS missing_end_lat,
    COUNT(*) - COUNT(end_lng) AS missing_end_lng,
    COUNT(*) - COUNT(member_casual) AS missing_member_casual
FROM Bicicletas; 

-- revisando si hay duplicados

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM Bicicletas;  -- Hay 211 ducplicados

-- ride_id - all have length of 16

SELECT LEN (ride_id) AS length_ride_id, COUNT(ride_id) AS no_of_rows
FROM Bicicletas
GROUP BY LEN (ride_id); -- 5860568

-- rideable_type - 3 unique types of bikes

SELECT DISTINCT rideable_type, COUNT(rideable_type) AS no_of_trips
FROM Bicicletas
GROUP BY rideable_type;

-- member_casual - 2 unique values - member and casual riders

SELECT DISTINCT member_casual, COUNT(*) AS count_member_type
FROM Bicicletas
GROUP BY member_casual;

SELECT TOP 20 started_at, ended_at
FROM dbo.[2023_24_tripdata_all_tripdata];

-- verificando filas que duren menos de 1 minuto y mas de 1 dia

SELECT COUNT(*) AS longer_than_1_day
FROM Bicicletas
WHERE DATEDIFF(MINUTE, started_at, ended_at) >= 1440;  7610


SELECT COUNT(*) AS less_than_a_minute
FROM Bicicletas
WHERE DATEDIFF(SECOND, started_at, ended_at) <= 60;  132175












