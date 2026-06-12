--AirlinesDataset

=======================================================================================
-- =====================================
-- 1. Passengers Table
-- =====================================

CREATE TABLE Passengers
(
    passenger_id INT,
    passenger_name VARCHAR(50)
);

INSERT INTO Passengers VALUES
(101, 'Ravi'),
(102, 'Priya'),
(103, 'Arjun'),
(104, 'Sneha'),
(105, 'Kiran');
=================================================================================================
-- =====================================
-- 2. Flights Table
-- =====================================

CREATE TABLE Flights
(
    flight_id VARCHAR(10),
    flight_name VARCHAR(50),
    destination VARCHAR(50)
);

INSERT INTO Flights VALUES
('F105', 'Akasa 405', 'Pakistan');
('F101', 'Indigo 101', 'Delhi'),
('F102', 'Air India 202', 'Mumbai'),
('F103', 'Vistara 303', 'Bangalore'),
('F104', 'Akasa 404', 'Chennai');

====================================================================================================

-- =====================================
-- 3. Bookings Table
-- =====================================

CREATE TABLE Bookings
(
    booking_id VARCHAR(10),
    passenger_id INT,
    flight_id VARCHAR(10)
);

INSERT INTO Bookings VALUES
('B1', 101, 'F101'),
('B2', 102, 'F102'),
('B3', 101, 'F103'),
('B4', 103, 'F101'),
('B5', 106, 'F104'),
-- Invalid Passenger
('B6', 104, NULL);     -- NULL Flight
=========================================================================================================
-- =====================================
-- 4. Boarding Pass Table
-- =====================================

CREATE TABLE Boarding_Pass
(
    pass_id VARCHAR(10),
    booking_id VARCHAR(10),
    seat_no VARCHAR(10)
);

INSERT INTO Boarding_Pass VALUES
('P1', 'B1', '12A'),
('P2', 'B2', '15C'),
('P3', 'B4', '8B'),
('P4', 'B7', '10D');   -- Invalid Booking
=========================================================================
1.Show the passsenger names and flight they have booked

passener_name	flight_id
Ravi			F101
Arjun			F102


Select
     p.passenger_name,b.flight_id--4
FROM Passengers p---1
INNER JOIN Bookings b--2
ON p.passenger_id=b.passenger_id--3

=========================================================================
2.Show all passengers and filghts they booked

Select
     p.passenger_name,b.flight_id--4
FROM Passengers p---1
LEFT JOIN Bookings b--2
ON p.passenger_id=b.passenger_id--3

=========================================================================
3.Find Passengers who never booked the flight

Select
     p.passenger_name,b.flight_id,b.booking_id
FROM Passengers p---1
LEFT JOIN Bookings b--2
ON p.passenger_id=b.passenger_id--3
WHERE booking_id IS NULL
==========================================================================
4.Show passengers Name,flightNAme, destination

			p_id				flight_id
paasenger---------->bookings------------------>flight

Select p.passenger_name,f.flight_name,f.destination
FROM Passengers p
JOIN Bookings b
	ON p.passenger_id=b.passenger_id
JOIN flights f
	ON b.flight_id=f.flight_id
============================================================================================================
5.Count how many flights each passenger booked

Ravi 2
Arjun 1

Select p.passenger_name,count(booking_id)
FROM Passengers p---1
LEFT JOIN Bookings b--2
ON p.passenger_id=b.passenger_id
GROUP BY passenger_name
================================================================================================
Select
     *
FROM Passengers p---1
LEFT JOIN Bookings b--2
ON p.passenger_id=b.passenger_id--3

count(*)-counts rows,not bookings vs count(column)--counts only non-null values

=============================================================================================================
6.Find flights that have no passgers
F109

Select *
From Bookings b
Right JOIN flights f
ON b.flight_id=f.flight_id
WHERE b.passenger_id IS NULL



=================================================================================================
Problems to practice:
1.Find all unmatched records between Passengers and Bookings:
	passengers with no bookings
	bookings with invalid passenger IDs


2.Show all passengers and all bookings, including:	
	passengers without bookings
	bookings without valid passengers
3.Find flights that have fewer than 2 bookings.
4.Find flights that have never been booked by any passenger
5.Show all passengers along with the number of flights they booked (including passengers with zero bookings).
6.Find flights that have at least 2 passengers booked.
7.Find the number of passengers traveling on each flight.


















