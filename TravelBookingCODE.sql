-- Create database
CREATE DATABASE travelbooking;
-- Switch to the newly created database
USE travelbooking;

-- Create Customers table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Email VARCHAR(255),
  Phone VARCHAR(20),
  Address VARCHAR(255)
);

-- Populate Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address) VALUES
  (1, 'Rahul', 'Sharma', 'rahul@example.com', '987-654-3210', '123 Gandhi Rd, Mumbai'),
  (2, 'Priya', 'Patel', 'priya@example.com', '876-543-2109', '456 Nehru St, Delhi'),
  (3, 'Amit', 'Singh', 'amit@example.com', '765-432-1098', '789 Tagore Ave, Kolkata'),
  (4, 'Kavita', 'Gupta', 'kavita@example.com', '654-321-0987', '234 Bose Ln, Chennai'),
  (5, 'Raj', 'Kumar', 'raj@example.com', '543-210-9876', '567 Nehru Rd, Bangalore'),
  (6, 'Meera', 'Shah', 'meera@example.com', '432-109-8765', '890 Gandhi St, Hyderabad'),
  (7, 'Vijay', 'Verma', 'vijay@example.com', '321-098-7654', '901 Patel Ave, Pune'),
  (8, 'Anjali', 'Joshi', 'anjali@example.com', '210-987-6543', '678 Nehru Ln, Ahmedabad'),
  (9, 'Arun', 'Malhotra', 'arun@example.com', '109-876-5432', '123 Tagore St, Jaipur'),
  (10, 'Pooja', 'Sharma', 'pooja@example.com', '098-765-4321', '456 Bose Rd, Lucknow');
-- Create Flights table
CREATE TABLE Flights (
  FlightID INT PRIMARY KEY,
  Airline VARCHAR(255),
  DepartureCity VARCHAR(255),
  ArrivalCity VARCHAR(255),
  DepartureDateTime DATETIME,
  ArrivalDateTime DATETIME,
  Price DECIMAL(10, 2)
);

-- Populate Flights table
INSERT INTO Flights (FlightID, Airline, DepartureCity, ArrivalCity, DepartureDateTime, ArrivalDateTime, Price) VALUES
  (1, 'IndiGo', 'Mumbai', 'Delhi', '2024-04-01 08:00:00', '2024-04-01 10:00:00', 200.00),
  (2, 'SpiceJet', 'Delhi', 'Kolkata', '2024-04-02 09:00:00', '2024-04-02 11:00:00', 250.00),
  (3, 'Air India', 'Kolkata', 'Chennai', '2024-04-03 10:00:00', '2024-04-03 12:00:00', 300.00),
  (4, 'GoAir', 'Chennai', 'Bangalore', '2024-04-04 11:00:00', '2024-04-04 13:00:00', 220.00),
  (5, 'Vistara', 'Bangalore', 'Hyderabad', '2024-04-05 12:00:00', '2024-04-05 14:00:00', 270.00),
  (6, 'AirAsia', 'Hyderabad', 'Pune', '2024-04-06 13:00:00', '2024-04-06 15:00:00', 230.00),
  (7, 'GoAir', 'Pune', 'Ahmedabad', '2024-04-07 14:00:00', '2024-04-07 16:00:00', 200.00),
  (8, 'SpiceJet', 'Ahmedabad', 'Jaipur', '2024-04-08 15:00:00', '2024-04-08 17:00:00', 180.00),
  (9, 'IndiGo', 'Jaipur', 'Lucknow', '2024-04-09 16:00:00', '2024-04-09 18:00:00', 210.00),
  (10, 'Vistara', 'Lucknow', 'Mumbai', '2024-04-10 17:00:00', '2024-04-10 19:00:00', 290.00);
-- Create Hotels table
CREATE TABLE Hotels (
  HotelID INT PRIMARY KEY,
  HotelName VARCHAR(255),
  City VARCHAR(255),
  CheckInDate DATE,
  CheckOutDate DATE,
  PricePerNight DECIMAL(10, 2)
);

-- Insert into Hotels and CarRentals tables
INSERT INTO Hotels (HotelID, HotelName, City, CheckInDate, CheckOutDate, PricePerNight) VALUES
  (1, 'Taj Mahal Palace', 'Mumbai', '2024-04-01', '2024-04-02', 150.00),
  (2, 'The Leela Palace', 'Delhi', '2024-04-02', '2024-04-03', 200.00),
  (3, 'ITC Sonar Bangla', 'Kolkata', '2024-04-03', '2024-04-04', 180.00),
  (4, 'Taj Coromandel', 'Chennai', '2024-04-04', '2024-04-05', 170.00),
  (5, 'Taj West End', 'Bangalore', '2024-04-05', '2024-04-06', 160.00),
  (6, 'ITC Kohenur', 'Hyderabad', '2024-04-06', '2024-04-07', 190.00),
  (7, 'JW Marriott', 'Pune', '2024-04-07', '2024-04-08', 140.00),
  (8, 'Courtyard by Marriott', 'Ahmedabad', '2024-04-08', '2024-04-09', 130.00),
  (9, 'Rambagh Palace', 'Jaipur', '2024-04-09', '2024-04-10', 220.00),
  (10, 'Taj Mahal', 'Lucknow', '2024-04-10', '2024-04-11', 250.00);

-- Create CarRentals table
CREATE TABLE CarRentals (
  RentalID INT PRIMARY KEY,
  RentalAgency VARCHAR(255),
  CarModel VARCHAR(255),
  PickupLocation VARCHAR(255),
  ReturnLocation VARCHAR(255),
  PickupDateTime DATETIME,
  ReturnDateTime DATETIME,
  PricePerDay DECIMAL(10, 2)
);

-- Populate CarRentals table
INSERT INTO CarRentals (RentalID, RentalAgency, CarModel, PickupLocation, ReturnLocation, PickupDateTime, ReturnDateTime, PricePerDay) 
VALUES
    (1, 'Avis', 'Toyota Innova', 'Mumbai', 'Mumbai', '2024-04-01 08:00:00', '2024-04-08 08:00:00', 50.00),
    (2, 'Hertz', 'Maruti Swift', 'Delhi', 'Delhi', '2024-04-02 09:00:00', '2024-04-09 09:00:00', 60.00),
    (3, 'Drivezy', 'Honda Amaze', 'Goa', 'Goa', '2024-04-11 17:00:00', '2024-04-18 17:00:00', 65.00),
    (10, 'Zoomcar', 'Toyota Innova', 'Delhi', 'Mumbai', '2024-04-15 09:00:00', '2024-04-22 09:00:00', 60.00),
    (4, 'Driver', 'Ford EcoSport', 'Bangalore', 'Bangalore', '2024-04-05 11:00:00', '2024-04-12 11:00:00', 52.00),
    (5, 'Savaari', 'Mahindra XUV500', 'Hyderabad', 'Hyderabad', '2024-04-06 12:00:00', '2024-04-13 12:00:00', 48.00),
    (6, 'MyChoize', 'Tata Nexon', 'Pune', 'Pune', '2024-04-07 13:00:00', '2024-04-14 13:00:00', 52.00), 
    (7, 'Revv', 'Renault Duster', 'Ahmedabad', 'Ahmedabad', '2024-04-08 14:00:00', '2024-04-15 14:00:00', 55.00),
    (8, 'Myles', 'Volkswagen Polo', 'Jaipur', 'Jaipur', '2024-04-09 15:00:00', '2024-04-16 15:00:00', 50.00),
    (9, 'Carzonrent', 'Kia Seltos', 'Lucknow', 'Lucknow', '2024-04-10 16:00:00', '2024-04-17 16:00:00', 60.00);
 

-- Create Bookings table
CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  CustomerID INT,
  FlightID INT,
  HotelID INT,
  RentalID INT,
  TotalPrice DECIMAL(10, 2),
  BookingDateTime DATETIME,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
  FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID),
  FOREIGN KEY (RentalID) REFERENCES CarRentals(RentalID)
);

-- Populate Bookings table
INSERT INTO Bookings (BookingID, CustomerID, FlightID, HotelID, RentalID, TotalPrice, BookingDateTime) VALUES
  (1, 1, 1, 1, 1, 450.00, '2024-03-28 10:00:00'),
  (2, 2, 2, 2, 2, 550.00, '2024-03-29 11:00:00'),
  (3, 3, 3, 3, 3, 500.00, '2024-03-30 12:00:00'),
  (4, 4, 4, 4, 4, 480.00, '2024-03-31 13:00:00'),
  (5, 5, 5, 5, 5, 560.00, '2024-04-01 14:00:00'),
  (6, 6, 6, 6, 6, 500.00, '2024-04-02 15:00:00'),
  (7, 7, 7, 7, 7, 450.00, '2024-04-03 16:00:00'),
  (8, 8, 8, 8, 8, 480.00, '2024-04-04 17:00:00'),
  (9, 9, 9, 9, 9, 690.00, '2024-04-05 18:00:00'),
  (10, 10, 10, 10, 10, 750.00, '2024-04-06 19:00:00');

-- Create CustomerFlights table
CREATE TABLE CustomerFlights (
  CustomerID INT,
  FlightID INT,
  PRIMARY KEY (CustomerID, FlightID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- Populate CustomerFlights table
INSERT INTO CustomerFlights (CustomerID, FlightID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- Create CustomerHotels table
CREATE TABLE CustomerHotels (
  CustomerID INT,
  HotelID INT,
  PRIMARY KEY (CustomerID, HotelID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

-- Populate CustomerHotels table
INSERT INTO CustomerHotels (CustomerID, HotelID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- Create CustomerCarRentals table
CREATE TABLE CustomerCarRentals (
  CustomerID INT,
  RentalID INT,
  PRIMARY KEY (CustomerID, RentalID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (RentalID) REFERENCES CarRentals(RentalID)
);

-- Populate CustomerCarRentals table
INSERT INTO CustomerCarRentals (CustomerID, RentalID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);
  -- showing all tables
SELECT * FROM Customers;
SELECT * FROM Flights;
SELECT * FROM Hotels;
SELECT * FROM CarRentals;
SELECT * FROM Bookings;

-- 1.Retrieve the customers who booked a flight but not a hotel:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
WHERE B.FlightID IS NOT NULL AND B.HotelID IS NULL;

-- 2.Retrieve the customers who booked both a flight and a hotel:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
WHERE B1.FlightID IS NOT NULL AND B2.HotelID IS NOT NULL;

-- 3.Retrieve the flights with the highest price:
SELECT *
FROM Flights
WHERE Price = (SELECT MAX(Price) FROM Flights);

-- 4.Retrieve the bookings made after '2024-04-05':
SELECT *
FROM Bookings
WHERE BookingDateTime > '2024-04-05';

-- 5.Retrieve the customers who booked more than one flight:
SELECT C.CustomerID, C.FirstName, C.LastName, COUNT(*) AS NumFlightsBooked
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
WHERE B.FlightID IS NOT NULL
GROUP BY C.CustomerID
HAVING COUNT(*) > 1;

-- 6.Retrieve the hotels with no bookings:
SELECT *
FROM Hotels
WHERE HotelID NOT IN (SELECT DISTINCT HotelID FROM Bookings WHERE HotelID IS NOT NULL);

-- 7.Retrieve the customers who booked a flight to 'Mumbai' and a hotel in 'Mumbai':
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
JOIN Flights F ON B1.FlightID = F.FlightID
JOIN Hotels H ON B2.HotelID = H.HotelID
WHERE F.ArrivalCity = 'Mumbai' AND H.City = 'Mumbai';

-- 8.Retrieve the customers who booked a car rental for more than 5 days:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
JOIN CarRentals CR ON B.RentalID = CR.RentalID
WHERE DATEDIFF(CR.ReturnDateTime, CR.PickupDateTime) > 5;

-- 9.Retrieve the customers who booked both a flight and a car rental but not a hotel:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
JOIN Flights F ON B1.FlightID = F.FlightID
JOIN CarRentals CR ON B2.RentalID = CR.RentalID
WHERE B1.FlightID IS NOT NULL AND B2.RentalID IS NOT NULL AND B1.HotelID IS NULL;

-- 10.Retrieve the customers who booked a hotel in 'Delhi' or a car rental from 'Mumbai':
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
JOIN Hotels H ON B1.HotelID = H.HotelID
JOIN CarRentals CR ON B2.RentalID = CR.RentalID
WHERE H.City = 'Delhi' OR CR.PickupLocation = 'Mumbai';

-- 11.Retrieve the bookings with a total price greater than $500 and made by customers whose last name starts with 'S':
SELECT *
FROM Bookings
WHERE TotalPrice > 500 AND CustomerID IN (SELECT CustomerID FROM Customers WHERE LastName LIKE 'S%');

-- 12.Retrieve the customers who booked a flight and a hotel in the same city:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
JOIN Flights F ON B1.FlightID = F.FlightID
JOIN Hotels H ON B2.HotelID = H.HotelID
WHERE F.ArrivalCity = H.City;

-- 13.Retrieve the bookings made on weekends (Saturday or Sunday):
SELECT *
FROM Bookings
WHERE DAYOFWEEK(BookingDateTime) IN (1, 7);

-- 14.Retrieve the flights with the shortest duration (in hours):
SELECT *, TIMESTAMPDIFF(HOUR, DepartureDateTime, ArrivalDateTime) AS DurationHours
FROM Flights
ORDER BY DurationHours ASC
LIMIT 1;

-- 15.Retrieve the customers who booked a flight to a city with a name longer than 6 characters:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
JOIN Flights F ON B.FlightID = F.FlightID
WHERE LENGTH(F.ArrivalCity) > 6;

-- 16.Retrieve the bookings with a total price greater than the average total price of bookings for each customer:
SELECT *
FROM Bookings
WHERE TotalPrice > (
    SELECT AVG(TotalPrice)
    FROM Bookings
    WHERE CustomerID = Bookings.CustomerID
);
-- 17.Retrieve the customers who booked flights on weekdays (Monday to Friday):
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B ON C.CustomerID = B.CustomerID
JOIN Flights F ON B.FlightID = F.FlightID
WHERE DAYOFWEEK(F.DepartureDateTime) BETWEEN 2 AND 6;

-- 18.Retrieve all customers whose CustomerID appears in the Bookings table, indicating that they have made bookings.
SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Bookings
);

-- 19.Retrieve the hotels with an average price per night greater than $200:
SELECT *
FROM Hotels
WHERE HotelID IN (
    SELECT HotelID
    FROM Bookings
    GROUP BY HotelID
    HAVING AVG(TotalPrice / DATEDIFF(CheckOutDate, CheckInDate)) > 200
);

-- 20.Retrieve the customers who booked both a flight and a hotel, with the hotel check-in date after the flight departure date:
SELECT DISTINCT C.*
FROM Customers C
JOIN Bookings B1 ON C.CustomerID = B1.CustomerID
JOIN Bookings B2 ON C.CustomerID = B2.CustomerID
JOIN Flights F ON B1.FlightID = F.FlightID
JOIN Hotels H ON B2.HotelID = H.HotelID
WHERE H.CheckInDate > F.DepartureDateTime;