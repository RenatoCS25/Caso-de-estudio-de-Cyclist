Use BikeSharing


DROP TABLE IF EXISTS [2024_tripdata.cleaned_combined_data];
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    DATEDIFF(SECOND, started_at, ended_at) / 60.0 AS ride_length,
    -- Día de la semana (numérico para mejor análisis)
    DATEPART(WEEKDAY, started_at) AS day_of_week,
    -- Mes (numérico)
    DATEPART(MONTH, started_at) AS month,
    start_station_name, 
    end_station_name, 
    start_lat, 
    start_lng, 
    end_lat, 
    end_lng, 
    member_casual
INTO [2024_tripdata.cleaned_combined_data]
FROM Bicicletas
WHERE 
    start_station_name IS NOT NULL 
    AND end_station_name IS NOT NULL 
    AND end_lat IS NOT NULL 
    AND end_lng IS NOT NULL 
    AND DATEDIFF(SECOND, started_at, ended_at) > 60  -- Evita viajes de 0 o negativos
    AND DATEDIFF(SECOND, started_at, ended_at) < 86400; -- 24 horas en segundos

	ALTER TABLE [2024_tripdata.cleaned_combined_data]
ADD CONSTRAINT PK_ride_id PRIMARY KEY (ride_id);

SELECT COUNT(ride_id) AS no_of_rows       -- returned 4,168,194 from 5,860,568 rows so 1,692,374 rows removed
FROM [2024_tripdata.cleaned_combined_data];

SELECT COUNT(ride_id) AS no_of_rows     
FROM Bicicletas;

