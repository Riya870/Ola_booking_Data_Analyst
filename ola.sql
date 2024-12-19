SELECT * FROM [dbo].[Bookings]


Create view Successful_Booking AS
SELECT * FROM [dbo].[Bookings]
WHERE Booking_Status ='Successs';



CREATE VIEW Ride_Distance_for_each_vehicle as 
SELECT Vehicle_Type , AVG(Ride_Distance) as Average_Ride
FROM [dbo].[Bookings]
GROUP BY Vehicle_Type;

SELECT * FROM [dbo].[Ride_Distance_for_each_vehicle]

CREATE VIEW Canceled_Rides_by_Customer AS
SELECT COUNT(*) AS canceled_Rides
FROM [dbo].[Bookings] 
WHERE Booking_Status = 'Canceled by Customer'

SELECT * FROM Canceled_Rides_by_Customer



CREATE VIEW Ride_canceled_by_driver_PCIssues AS
SELECT COUNT(*) as Ride_canceled FROM [dbo].[Bookings]
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue'


SELECT * FROM [dbo].[Ride_canceled_by_driver_PCIssues]

CREATE VIEW Max_min_driver_rating AS
SELECT  MAX(Customer_Rating) AS Max_rating ,MIN(Customer_Rating) AS Min_rating
FROM [dbo].[Bookings]
WHERE Vehicle_Type = 'Prime Sedan';

Create View UPI_Payment AS
SELECT * FROM [dbo].[Bookings] WHERE Payment_Method = 'UPI';

CREATE VIEW Customer_rating_per_vehicle AS
select Vehicle_Type , AVG(Customer_Rating) as Customer_rating_per_vehicle
FROM [dbo].[Bookings]
GROUP BY Vehicle_Type;


CREATE VIEW  Booking_Value_successful AS
SELECT SUM(Booking_Value) as Booking_Value_successful
FROM [dbo].[Bookings]
WHERE Booking_Status ='Success';

CREATE VIEW Incomplete_rides_reason as
SELECT Booking_ID,Incomplete_Rides_Reason
FROM [dbo].[Bookings]
WHERE Incomplete_Rides = 1


Select * from [dbo].[Successful_Booking]
Select * from [dbo].[Ride_Distance_for_each_vehicle]
Select * from [dbo].[Canceled_Rides_by_Customer]
Select * from [dbo].[Ride_canceled_by_driver_PCIssues]
Select * from [dbo].[Max_min_driver_rating]
Select * from [dbo].[UPI_Payment]
Select * from [dbo].[Customer_rating_per_vehicle]
Select * from [dbo].[Booking_Value_successful]
Select * from [dbo].[Incomplete_rides_reason]