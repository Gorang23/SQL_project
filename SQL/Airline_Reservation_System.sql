CREATE DATABASE Airline_Reservation_System;
USE Airline_Reservation_System;

CREATE TABLE Passenger(
    Passenger_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Contact_Number VARCHAR(15),
    Email VARCHAR(50)
);

CREATE TABLE Flight(
    Flight_ID INT AUTO_INCREMENT PRIMARY KEY,
    Flight_Number VARCHAR(10),
    Origin VARCHAR(30),
    Destination VARCHAR(30),
    Departure_Time DATETIME,
    Arrival_Time DATETIME
);

CREATE TABLE Booking(
    Booking_ID INT AUTO_INCREMENT PRIMARY KEY,
    Passenger_ID INT,
    Flight_ID INT,
    Booking_Date DATE,
    Seat_Number VARCHAR(5),
    Reservation_Status VARCHAR(20),

    FOREIGN KEY (Passenger_ID) REFERENCES Passenger(Passenger_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

CREATE TABLE Payment(
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Booking_ID INT UNIQUE,
    Payment_Mode VARCHAR(20),
    Payment_Status VARCHAR(20),
    Amount DECIMAL(8,2),
    Transaction_Date DATE,

    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);

INSERT INTO Passenger (First_Name, Last_Name, Contact_Number, Email) VALUES
('Rahul','Sharma','9876543210','rahul1@gmail.com'),
('Priya','Patel','9123456780','priya2@gmail.com'),
('Amit','Joshi','9988776655','amit3@gmail.com'),
('Sneha','Kapoor','9765432109','sneha4@gmail.com'),
('Rohan','Mehta','9090909090','rohan5@gmail.com'),
('Anjali','Iyer','8887766554','anjali6@gmail.com'),
('Vikas','Gupta','8899001122','vikas7@gmail.com'),
('Neha','Verma','9001234567','neha8@gmail.com'),
('Karan','Malhotra','9111111111','karan9@gmail.com'),
('Pooja','Singh','9222222222','pooja10@gmail.com'),
('Arjun','Nair','9333333333','arjun11@gmail.com'),
('Simran','Kaur','9444444444','simran12@gmail.com'),
('Dev','Kulkarni','9555555555','dev13@gmail.com'),
('Meera','Desai','9666666666','meera14@gmail.com'),
('Yash','Agarwal','9777777777','yash15@gmail.com'),
('Tina','Shah','9888888888','tina16@gmail.com'),
('Sahil','Bansal','9999999999','sahil17@gmail.com'),
('Ritika','Chopra','9012345678','ritika18@gmail.com'),
('Varun','Arora','9123987654','varun19@gmail.com'),
('Ishita','Pillai','9234567890','ishita20@gmail.com'),
('Nikhil','Reddy','9345678901','nikhil21@gmail.com'),
('Ayesha','Khan','9456789012','ayesha22@gmail.com'),
('Kabir','Saxena','9567890123','kabir23@gmail.com'),
('Diya','Mishra','9678901234','diya24@gmail.com'),
('Manav','Trivedi','9789012345','manav25@gmail.com'),
('Aditya','Patil','9811111111','aditya26@gmail.com'),
('Riya','Shah','9822222222','riya27@gmail.com'),
('Mohit','Agarwal','9833333333','mohit28@gmail.com'),
('Kavya','Nair','9844444444','kavya29@gmail.com'),
('Harsh','Gupta','9855555555','harsh30@gmail.com'),
('Sanya','Kapoor','9866666666','sanya31@gmail.com'),
('Nitin','Joshi','9871111112','nitin32@gmail.com'),
('Pallavi','Kulkarni','9882222223','pallavi33@gmail.com'),
('Rakesh','Yadav','9893333334','rakesh34@gmail.com'),
('Komal','Jain','9904444445','komal35@gmail.com'),
('Deepak','Mishra','9915555556','deepak36@gmail.com'),
('Tanvi','Deshpande','9926666667','tanvi37@gmail.com'),
('Akash','Chavan','9937777778','akash38@gmail.com'),
('Bhavna','Rao','9948888889','bhavna39@gmail.com'),
('Chetan','Pawar','9959999990','chetan40@gmail.com'),
('Divya','Menon','9961111111','divya41@gmail.com'),
('Esha','Bose','9972222222','esha42@gmail.com'),
('Farhan','Sheikh','9983333333','farhan43@gmail.com'),
('Gaurav','Soni','9994444444','gaurav44@gmail.com'),
('Heena','Arora','9005555555','heena45@gmail.com'),
('Imran','Qureshi','9016666666','imran46@gmail.com'),
('Juhi','Bhatia','9027777777','juhi47@gmail.com'),
('Kunal','Thakur','9038888888','kunal48@gmail.com'),
('Lavanya','Iyer','9049999999','lavanya49@gmail.com'),
('Manish','Dubey','9051111111','manish50@gmail.com'),
('Neeraj','Saxena','9062222222','neeraj51@gmail.com'),
('Ojas','Desai','9073333333','ojas52@gmail.com'),
('Pritam','Roy','9084444444','pritam53@gmail.com'),
('Qasim','Ali','9095555555','qasim54@gmail.com'),
('Ritu','Malik','9106666666','ritu55@gmail.com'),
('Saurabh','Srivastava','9117777777','saurabh56@gmail.com'),
('Trisha','Dutta','9128888888','trisha57@gmail.com'),
('Uday','Naik','9139999999','uday58@gmail.com'),
('Vaibhav','Gokhale','9141111111','vaibhav59@gmail.com'),
('Waseem','Ansari','9152222222','waseem60@gmail.com'),
('Yamini','Chatterjee','9163333333','yamini61@gmail.com'),
('Zoya','Mirza','9174444444','zoya62@gmail.com'),
('Aarav','Kapadia','9185555555','aarav63@gmail.com'),
('Bhavesh','Solanki','9196666666','bhavesh64@gmail.com'),
('Chirag','Pandey','9207777777','chirag65@gmail.com'),
('Darshan','Modi','9218888888','darshan66@gmail.com'),
('Ekta','Seth','9229999999','ekta67@gmail.com'),
('Falguni','Patankar','9231111111','falguni68@gmail.com'),
('Girish','Nanda','9242222222','girish69@gmail.com'),
('Hitesh','Vora','9253333333','hitesh70@gmail.com'),
('Ira','Bhatt','9264444444','ira71@gmail.com'),
('Jatin','Saluja','9275555555','jatin72@gmail.com'),
('Kriti','Mahajan','9286666666','kriti73@gmail.com'),
('Lokesh','Parmar','9297777777','lokesh74@gmail.com'),
('Mehul','Doshi','9308888888','mehul75@gmail.com'),
('Naina','Suri','9319999999','naina76@gmail.com'),
('Omkar','Sawant','9321111111','omkar77@gmail.com'),
('Pranay','Kamble','9332222222','pranay78@gmail.com'),
('Rachit','Lal','9343333333','rachit79@gmail.com'),
('Siddhi','Panchal','9354444444','siddhi80@gmail.com'),
('Tejas','Kothari','9365555555','tejas81@gmail.com'),
('Urvi','Parekh','9376666666','urvi82@gmail.com'),
('Vinit','Rastogi','9387777777','vinit83@gmail.com'),
('Yogesh','Tiwari','9398888888','yogesh84@gmail.com'),
('Zubin','Engineer','9409999999','zubin85@gmail.com'),
('Aditi','Rane','9411111111','aditi86@gmail.com'),
('Bharat','Lohar','9422222222','bharat87@gmail.com'),
('Charu','Bajaj','9433333333','charu88@gmail.com'),
('Dinesh','Rawat','9444444445','dinesh89@gmail.com'),
('Eknath','Jadhav','9455555556','eknath90@gmail.com'),
('Firoz','Khan','9466666667','firoz91@gmail.com'),
('Geeta','Pillai','9477777778','geeta92@gmail.com'),
('Himani','Ahuja','9488888889','himani93@gmail.com'),
('Inder','Chopra','9499999990','inder94@gmail.com'),
('Jay','Mehra','9501111111','jay95@gmail.com'),
('Keshav','Bedi','9512222222','keshav96@gmail.com'),
('Leena','Fernandes','9523333333','leena97@gmail.com'),
('Mukul','Sarin','9534444444','mukul98@gmail.com'),
('Nisha','Talwar','9545555555','nisha99@gmail.com'),
('Parth','Bhargava','9556666666','parth100@gmail.com');

INSERT INTO Flight (Flight_Number, Origin, Destination, Departure_Time, Arrival_Time) VALUES
('AI101','Mumbai','Delhi','2024-06-01 08:00:00','2024-06-01 10:00:00'),
('AI102','Delhi','Mumbai','2024-06-01 12:00:00','2024-06-01 14:00:00'),
('AI201','Mumbai','Bangalore','2024-06-02 09:00:00','2024-06-02 11:00:00'),
('AI202','Bangalore','Mumbai','2024-06-02 13:00:00','2024-06-02 15:00:00'),
('AI301','Mumbai','Chennai','2024-06-03 07:00:00','2024-06-03 09:00:00'),
('AI302','Chennai','Mumbai','2024-06-03 17:00:00','2024-06-03 19:00:00'),
('AI401','Mumbai','Kolkata','2024-06-04 06:30:00','2024-06-04 09:30:00'),
('AI402','Kolkata','Mumbai','2024-06-04 18:30:00','2024-06-04 21:30:00');

INSERT INTO Booking (Passenger_ID, Flight_ID, Booking_Date, Seat_Number, Reservation_Status) VALUES
(1,1,'2024-05-01','1A','Confirmed'),
(2,2,'2024-05-01','1B','Confirmed'),
(3,3,'2024-05-01','2A','Confirmed'),
(4,4,'2024-05-02','2B','Confirmed'),
(5,5,'2024-05-02','3A','Confirmed'),
(6,6,'2024-05-02','3B','Confirmed'),
(7,7,'2024-05-03','4A','Confirmed'),
(8,8,'2024-05-03','4B','Confirmed'),
(9,1,'2024-05-03','5A','Confirmed'),
(10,2,'2024-05-04','5B','Cancelled'),
(11,3,'2024-05-04','6A','Confirmed'),
(12,4,'2024-05-04','6B','Confirmed'),
(13,5,'2024-05-05','7A','Confirmed'),
(14,6,'2024-05-05','7B','Confirmed'),
(15,7,'2024-05-05','8A','Confirmed'),
(16,8,'2024-05-06','8B','Confirmed'),
(17,1,'2024-05-06','9A','Confirmed'),
(18,2,'2024-05-06','9B','Confirmed'),
(19,3,'2024-05-07','10A','Confirmed'),
(20,4,'2024-05-07','10B','Confirmed'),
(21,5,'2024-05-07','11A','Confirmed'),
(22,6,'2024-05-08','11B','Confirmed'),
(23,7,'2024-05-08','12A','Confirmed'),
(24,8,'2024-05-08','12B','Confirmed'),
(25,1,'2024-05-09','13A','Confirmed'),
(26,2,'2024-05-09','13B','Confirmed'),
(27,3,'2024-05-09','14A','Confirmed'),
(28,4,'2024-05-10','14B','Confirmed'),
(29,5,'2024-05-10','15A','Confirmed'),
(30,6,'2024-05-10','15B','Confirmed'),
(31,7,'2024-05-11','16A','Confirmed'),
(32,8,'2024-05-11','16B','Confirmed'),
(33,1,'2024-05-11','17A','Confirmed'),
(34,2,'2024-05-12','17B','Confirmed'),
(35,3,'2024-05-12','18A','Confirmed'),
(36,4,'2024-05-12','18B','Confirmed'),
(37,5,'2024-05-13','19A','Confirmed'),
(38,6,'2024-05-13','19B','Confirmed'),
(39,7,'2024-05-13','20A','Confirmed'),
(40,8,'2024-05-14','20B','Confirmed'),
(41,1,'2024-05-14','21A','Confirmed'),
(42,2,'2024-05-14','21B','Confirmed'),
(43,3,'2024-05-15','22A','Confirmed'),
(44,4,'2024-05-15','22B','Confirmed'),
(45,5,'2024-05-15','23A','Confirmed'),
(46,6,'2024-05-16','23B','Confirmed'),
(47,7,'2024-05-16','24A','Confirmed'),
(48,8,'2024-05-16','24B','Confirmed'),
(49,1,'2024-05-17','25A','Confirmed'),
(50,2,'2024-05-17','25B','Confirmed'),
(51,3,'2024-05-17','26A','Confirmed'),
(52,4,'2024-05-18','26B','Confirmed'),
(53,5,'2024-05-18','27A','Confirmed'),
(54,6,'2024-05-18','27B','Confirmed'),
(55,7,'2024-05-19','28A','Confirmed'),
(56,8,'2024-05-19','28B','Confirmed'),
(57,1,'2024-05-19','29A','Confirmed'),
(58,2,'2024-05-20','29B','Confirmed'),
(59,3,'2024-05-20','30A','Confirmed'),
(60,4,'2024-05-20','30B','Confirmed'),
(61,5,'2024-05-21','31A','Confirmed'),
(62,6,'2024-05-21','31B','Confirmed'),
(63,7,'2024-05-21','32A','Confirmed'),
(64,8,'2024-05-22','32B','Confirmed'),
(65,1,'2024-05-22','33A','Confirmed'),
(66,2,'2024-05-22','33B','Confirmed'),
(67,3,'2024-05-23','34A','Confirmed'),
(68,4,'2024-05-23','34B','Confirmed'),
(69,5,'2024-05-23','35A','Confirmed'),
(70,6,'2024-05-24','35B','Confirmed'),
(71,7,'2024-05-24','36A','Confirmed'),
(72,8,'2024-05-24','36B','Confirmed'),
(73,1,'2024-05-25','37A','Confirmed'),
(74,2,'2024-05-25','37B','Confirmed'),
(75,3,'2024-05-25','38A','Confirmed'),
(76,4,'2024-05-26','38B','Confirmed'),
(77,5,'2024-05-26','39A','Confirmed'),
(78,6,'2024-05-26','39B','Confirmed'),
(79,7,'2024-05-27','40A','Confirmed'),
(80,8,'2024-05-27','40B','Confirmed'),
(81,1,'2024-05-27','41A','Confirmed'),
(82,2,'2024-05-28','41B','Confirmed'),
(83,3,'2024-05-28','42A','Confirmed'),
(84,4,'2024-05-28','42B','Confirmed'),
(85,5,'2024-05-29','43A','Confirmed'),
(86,6,'2024-05-29','43B','Confirmed'),
(87,7,'2024-05-29','44A','Confirmed'),
(88,8,'2024-05-30','44B','Confirmed'),
(89,1,'2024-05-30','45A','Confirmed'),
(90,2,'2024-05-30','45B','Confirmed'),
(91,3,'2024-05-31','46A','Confirmed'),
(92,4,'2024-05-31','46B','Confirmed'),
(93,5,'2024-05-31','47A','Confirmed'),
(94,6,'2024-06-01','47B','Confirmed'),
(95,7,'2024-06-01','48A','Confirmed'),
(96,8,'2024-06-01','48B','Confirmed'),
(97,1,'2024-06-02','49A','Confirmed'),
(98,2,'2024-06-02','49B','Confirmed'),
(99,3,'2024-06-02','50A','Confirmed'),
(100,4,'2024-06-03','50B','Confirmed');

INSERT INTO Payment (Booking_ID, Payment_Mode, Payment_Status, Amount, Transaction_Date) VALUES
(1,'UPI','Success',5200,'2024-05-01'),
(2,'Card','Success',5400,'2024-05-01'),
(3,'Cash','Success',5100,'2024-05-01'),
(4,'UPI','Success',5300,'2024-05-02'),
(5,'Card','Success',5500,'2024-05-02'),
(6,'Cash','Success',5000,'2024-05-02'),
(7,'UPI','Success',5600,'2024-05-03'),
(8,'Card','Success',5800,'2024-05-03'),
(9,'Cash','Success',5100,'2024-05-03'),
(10,'UPI','Failed',5400,'2024-05-04'),
(11,'Card','Success',6000,'2024-05-04'),
(12,'Cash','Success',5900,'2024-05-04'),
(13,'UPI','Success',6200,'2024-05-05'),
(14,'Card','Success',6100,'2024-05-05'),
(15,'Cash','Success',5800,'2024-05-05'),
(16,'UPI','Success',5500,'2024-05-06'),
(17,'Card','Success',5600,'2024-05-06'),
(18,'Cash','Success',5400,'2024-05-06'),
(19,'UPI','Success',6300,'2024-05-07'),
(20,'Card','Success',6400,'2024-05-07'),
(21,'Cash','Success',5200,'2024-05-07'),
(22,'UPI','Success',5300,'2024-05-08'),
(23,'Card','Success',5500,'2024-05-08'),
(24,'Cash','Success',5100,'2024-05-08'),
(25,'UPI','Success',5700,'2024-05-09'),
(26,'Card','Success',5800,'2024-05-09'),
(27,'Cash','Success',5600,'2024-05-09'),
(28,'UPI','Success',5400,'2024-05-10'),
(29,'Card','Success',5500,'2024-05-10'),
(30,'Cash','Success',5200,'2024-05-10'),
(31,'UPI','Success',6100,'2024-05-11'),
(32,'Card','Success',6200,'2024-05-11'),
(33,'Cash','Success',5900,'2024-05-11'),
(34,'UPI','Success',5300,'2024-05-12'),
(35,'Card','Success',5400,'2024-05-12'),
(36,'Cash','Success',5100,'2024-05-12'),
(37,'UPI','Success',6000,'2024-05-13'),
(38,'Card','Success',6100,'2024-05-13'),
(39,'Cash','Success',5800,'2024-05-13'),
(40,'UPI','Success',5500,'2024-05-14'),
(41,'Card','Success',5600,'2024-05-14'),
(42,'Cash','Success',5400,'2024-05-14'),
(43,'UPI','Success',6200,'2024-05-15'),
(44,'Card','Success',6300,'2024-05-15'),
(45,'Cash','Success',6000,'2024-05-15'),
(46,'UPI','Success',5200,'2024-05-16'),
(47,'Card','Success',5400,'2024-05-16'),
(48,'Cash','Success',5100,'2024-05-16'),
(49,'UPI','Success',5800,'2024-05-17'),
(50,'Card','Success',5900,'2024-05-17'),
(51,'Cash','Success',5600,'2024-05-17'),
(52,'UPI','Success',5300,'2024-05-18'),
(53,'Card','Success',5500,'2024-05-18'),
(54,'Cash','Success',5200,'2024-05-18'),
(55,'UPI','Success',6100,'2024-05-19'),
(56,'Card','Success',6200,'2024-05-19'),
(57,'Cash','Success',5900,'2024-05-19'),
(58,'UPI','Success',5400,'2024-05-20'),
(59,'Card','Success',5600,'2024-05-20'),
(60,'Cash','Success',5300,'2024-05-20'),
(61,'UPI','Success',6000,'2024-05-21'),
(62,'Card','Success',6100,'2024-05-21'),
(63,'Cash','Success',5800,'2024-05-21'),
(64,'UPI','Success',5200,'2024-05-22'),
(65,'Card','Success',5400,'2024-05-22'),
(66,'Cash','Success',5100,'2024-05-22'),
(67,'UPI','Success',5700,'2024-05-23'),
(68,'Card','Success',5900,'2024-05-23'),
(69,'Cash','Success',5600,'2024-05-23'),
(70,'UPI','Success',5300,'2024-05-24'),
(71,'Card','Success',5500,'2024-05-24'),
(72,'Cash','Success',5200,'2024-05-24'),
(73,'UPI','Success',6200,'2024-05-25'),
(74,'Card','Success',6300,'2024-05-25'),
(75,'Cash','Success',6000,'2024-05-25'),
(76,'UPI','Success',5400,'2024-05-26'),
(77,'Card','Success',5600,'2024-05-26'),
(78,'Cash','Success',5300,'2024-05-26'),
(79,'UPI','Success',6100,'2024-05-27'),
(80,'Card','Success',6200,'2024-05-27'),
(81,'Cash','Success',5900,'2024-05-27'),
(82,'UPI','Success',5200,'2024-05-28'),
(83,'Card','Success',5400,'2024-05-28'),
(84,'Cash','Success',5100,'2024-05-28'),
(85,'UPI','Success',5800,'2024-05-29'),
(86,'Card','Success',6000,'2024-05-29'),
(87,'Cash','Success',5700,'2024-05-29'),
(88,'UPI','Success',5300,'2024-05-30'),
(89,'Card','Success',5500,'2024-05-30'),
(90,'Cash','Success',5200,'2024-05-30'),
(91,'UPI','Success',6100,'2024-05-31'),
(92,'Card','Success',6300,'2024-05-31'),
(93,'Cash','Success',5900,'2024-05-31'),
(94,'UPI','Success',5400,'2024-06-01'),
(95,'Card','Success',5600,'2024-06-01'),
(96,'Cash','Success',5300,'2024-06-01'),
(97,'UPI','Success',6000,'2024-06-02'),
(98,'Card','Success',6200,'2024-06-02'),
(99,'Cash','Success',5800,'2024-06-02'),
(100,'UPI','Success',5500,'2024-06-03');

SELECT * FROM Passenger;
SELECT * FROM Flight;
SELECT * FROM Booking;
SELECT * FROM Payment;


-- BASIC QUERIES
-- Show all confirmed bookings
SELECT * 
FROM Booking
WHERE Reservation_Status = 'Confirmed';


-- Show all cancelled bookings
SELECT * 
FROM Booking
WHERE Reservation_Status = 'Cancelled';


-- Show passengers whose first name starts with 'R'
SELECT * 
FROM Passenger
WHERE First_Name LIKE 'R%';


-- Show flights from Mumbai to Delhi
SELECT * 
FROM Flight
WHERE Origin = 'Mumbai' AND Destination = 'Delhi';


-- AGGREGATE FUNCTIONS
-- Calculate total revenue earned from successful payments
SELECT SUM(Amount) AS Total_Revenue
FROM Payment
WHERE Payment_Status = 'Success';


-- Calculate average ticket price
SELECT AVG(Amount) AS Average_Fare
FROM Payment;


-- Find highest payment amount
SELECT MAX(Amount) AS Highest_Payment
FROM Payment;


-- Find lowest payment amount
SELECT MIN(Amount) AS Lowest_Payment
FROM Payment;


-- Count total number of passengers
SELECT COUNT(*) AS Total_Passengers
FROM Passenger;



-- GROUP BY AND HAVING CLAUSE
-- Count number of bookings for each flight
SELECT Flight_ID, COUNT(*) AS Total_Bookings
FROM Booking
GROUP BY Flight_ID;


-- Show flights having more than 10 bookings
SELECT Flight_ID, COUNT(*) AS Total_Bookings
FROM Booking
GROUP BY Flight_ID
HAVING COUNT(*) > 10;


-- Calculate total revenue grouped by payment mode
SELECT Payment_Mode, SUM(Amount) AS Revenue
FROM Payment
GROUP BY Payment_Mode;

-- JOINS
-- Display passenger details along with their seat number and reservation status
SELECT P.First_Name, P.Last_Name, B.Seat_Number, B.Reservation_Status
FROM Passenger P
INNER JOIN Booking B
ON P.Passenger_ID = B.Passenger_ID;


-- Display passenger name, flight number, origin, destination and seat number
SELECT P.First_Name, F.Flight_Number, F.Origin, F.Destination, B.Seat_Number
FROM Passenger P
JOIN Booking B ON P.Passenger_ID = B.Passenger_ID
JOIN Flight F ON B.Flight_ID = F.Flight_ID;


-- Display complete booking information including payment details (All 4 tables join)
SELECT P.First_Name, F.Flight_Number, B.Seat_Number, Pay.Amount, Pay.Payment_Status
FROM Passenger P
JOIN Booking B ON P.Passenger_ID = B.Passenger_ID
JOIN Flight F ON B.Flight_ID = F.Flight_ID
JOIN Payment Pay ON B.Booking_ID = Pay.Booking_ID;



-- SUBQUERIES
-- Show bookings where payment amount is greater than average payment
SELECT Booking_ID, Amount
FROM Payment
WHERE Amount > (SELECT AVG(Amount) FROM Payment);


-- Show flights that have at least one booking
SELECT Flight_ID
FROM Flight
WHERE Flight_ID IN (SELECT DISTINCT Flight_ID FROM Booking);

-- WINDOW FUNCTIONS
-- Calculate running total of payment amounts ordered by booking
SELECT Booking_ID, Amount,
SUM(Amount) OVER (ORDER BY Booking_ID) AS Running_Total
FROM Payment;


-- Show each payment with overall average payment amount
SELECT Booking_ID, Amount,
AVG(Amount) OVER() AS Overall_Average
FROM Payment;



-- RANKING FUNCTIONS
-- Rank payments from highest to lowest amount
SELECT Booking_ID, Amount,
RANK() OVER (ORDER BY Amount DESC) AS Payment_Rank
FROM Payment;


-- Dense ranking of payments (no rank gaps)
SELECT Booking_ID, Amount,
DENSE_RANK() OVER (ORDER BY Amount DESC) AS Dense_Rank
FROM Payment;


-- Display top 5 highest payment transactions
SELECT Booking_ID, Amount
FROM Payment
ORDER BY Amount DESC
LIMIT 5;

-- ORDER BY CLAUSE
-- Display passengers in alphabetical order
SELECT * 
FROM Passenger
ORDER BY First_Name;


-- Display latest bookings first
SELECT * 
FROM Booking
ORDER BY Booking_Date DESC;
