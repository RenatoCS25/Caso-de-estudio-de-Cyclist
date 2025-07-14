-- tipos de bicicletas utilizadas por los ciclistas

SELECT member_casual, rideable_type, COUNT(*) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips;

-- número de viajes por mes

SELECT month, member_casual, COUNT(ride_id) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY month, member_casual
ORDER BY member_casual;

-- número de viajes por día de la semana

SELECT day_of_week, member_casual, COUNT(ride_id) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY day_of_week, member_casual
ORDER BY member_casual;

-- número de viajes por hora
SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, COUNT(ride_id) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY hour_of_day, member_casual
ORDER BY member_casual;

-- duración promedio del viaje por mes

SELECT month, member_casual, AVG(ride_length) AS avg_ride_duration
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY month, member_casual;

-- duración promedio del viaje por día de la semana

SELECT day_of_week, member_casual, AVG(ride_length) AS avg_ride_duration
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY day_of_week, member_casual;

-- duración media del viaje por hora

SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, AVG(ride_length) AS avg_ride_duration
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY hour_of_day, member_casual;

-- ubicaciones de las estaciones de inicio

SELECT start_station_name, member_casual,
  AVG(start_lat) AS start_lat, AVG(start_lng) AS start_lng,
  COUNT(ride_id) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY start_station_name, member_casual;

-- ubicaciones de estaciones finales
SELECT end_station_name, member_casual,
  AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng,
  COUNT(ride_id) AS total_trips
FROM [2024_tripdata.cleaned_combined_data]
GROUP BY end_station_name, member_casual;
