USE master;
GO

WITH N AS (
    SELECT TOP 1000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM master..spt_values
)
INSERT INTO Flights (FlightID, FromCity, ToCity, Distance, PlaneType)
SELECT 
    n,
    CONCAT('City', n % 50),
    CONCAT('City', (n + 5) % 50),
    (n % 900) + 100,
    CONCAT('PlaneType', n % 10)
FROM N;
