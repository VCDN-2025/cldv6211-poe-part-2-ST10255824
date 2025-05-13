DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Venues;
DROP TABLE IF EXISTS BookingDisplay;

-- Create Venue Table
CREATE TABLE Venues (
    VenueId INT PRIMARY KEY IDENTITY(1,1), 
    VenueName VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl VARCHAR(500) NULL
);

-- Create Event Table
CREATE TABLE Events (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    EventName VARCHAR(255) NOT NULL,
    EventDate DATE NOT NULL,
    Description TEXT NULL
);

--Create Booking Table
CREATE TABLE Bookings (
    BookingId INT PRIMARY KEY IDENTITY(1,1), 
    EventId INT NOT NULL,
    VenueId INT NOT NULL,
    BookingDate DATE NOT NULL,
    FOREIGN KEY (EventId) REFERENCES Events(EventId) ON DELETE CASCADE,
    FOREIGN KEY (VenueId) REFERENCES Venues(VenueId) ON DELETE CASCADE
);



CREATE TABLE BookingDisplay (
    BookingId INT PRIMARY KEY,
    BookingDate DATETIME NOT NULL,
    EventName NVARCHAR(255) NOT NULL,
    VenueName NVARCHAR(255) NOT NULL
);



INSERT INTO Events (EventName, EventDate) VALUES ('Music Festival', '2025-06-01');
INSERT INTO Events (EventName, EventDate) VALUES ('Tech Conference', '2025-07-15');
INSERT INTO Events (EventName, EventDate) VALUES ('Food Expo', '2025-08-10');




INSERT INTO Venues (VenueName, Location, Capacity) VALUES ('Grand Arena', 'City Center', 5000);
INSERT INTO Venues (VenueName, Location, Capacity) VALUES ('Expo Hall', 'Downtown', 3000);
INSERT INTO Venues (VenueName, Location, Capacity) VALUES ('Convention Center', 'Uptown', 8000);



INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES (1, 1, '2025-05-15');
INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES (2, 1, '2025-06-10');
INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES (3, 2, '2025-07-20');
INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES (1, 3, '2025-08-05');
INSERT INTO Bookings (EventId, VenueId, BookingDate) VALUES (2, 2, '2025-09-12');



SELECT * FROM Venues;
SELECT * FROM Events;














