USE master;
GO

IF OBJECT_ID('Flights', 'U') IS NOT NULL
    DROP TABLE Flights;
GO

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    FromCity NVARCHAR(50) NOT NULL,
    ToCity NVARCHAR(50) NOT NULL,
    Distance INT NOT NULL,
    PlaneType NVARCHAR(50) NOT NULL
);
GO