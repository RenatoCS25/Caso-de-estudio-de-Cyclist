USE BikeSharing;
CREATE TABLE Bicicletas (
	ride_id VARCHAR(255),
	rideable_type MEDIUMTEXT,
	started_at DATETIME,
	ended_at DATETIME,
	start_station_name MEDIUMTEXT,
	start_station_id MEDIUMTEXT,
	end_station_name MEDIUMTEXT,
	end_station_id MEDIUMTEXT,
	start_lat DOUBLE,
	start_lng DOUBLE,
	end_lat DOUBLE,
	end_lng DOUBLE,
	member_casual MEDIUMTEXT
);

-- combinando todas las tablas de datos de 12 meses en una sola tabla que contiene datos desde enero de 2024 hasta diciembre de 2024.
INSERT INTO Bicicletas
    SELECT * FROM [202401]
    UNION ALL
    SELECT * FROM [202402]
    UNION ALL
    SELECT * FROM [202403]
    UNION ALL
    SELECT * FROM [202404]
    UNION ALL
    SELECT * FROM [202405]
    UNION ALL
    SELECT * FROM [202406]
    UNION ALL
    SELECT * FROM [202407]
    UNION ALL
    SELECT * FROM [202408]
    UNION ALL
    SELECT * FROM [202409]
    UNION ALL
    SELECT * FROM [202410]
    UNION ALL
    SELECT * FROM [202411]
    UNION ALL
    SELECT * FROM [202412];
