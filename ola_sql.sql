create database ola;

select * from bookings;

-- 1. Select all successful bookings
Select * from bookings
where Booking_Status="success";

-- 2.Find the average ride distance for each vehicle type*/

select vehicle_type, avg(ride_distance) as Average_distance from bookings
group by vehicle_type
order by Average_distance desc;

-- 3.Get the total number of cancelled rides by customers*/

select count(booking_status) from bookings
where Booking_Status= "Canceled by Customer";

-- 4.List the top 5 customers who booked the highest number of rides

select customer_id, count(Booking_ID) as total_booking from bookings
group by Customer_ID
order by total_booking desc
limit 5; 

-- 5.Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(canceled_rides_by_driver) cancelled_by_driver from bookings
where Canceled_Rides_by_Driver="Personal & Car related issue";

-- 6.Find the MAximum and minimum driver ratings for Prime sedan bookings

select   Vehicle_Type, max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_rating from bookings
where Vehicle_type= "Prime Sedan" and Driver_Ratings != "";

-- 7.Retrive all rides where payment was made using UPI:

select * from bookings
where Payment_Method="UPI";

-- 8.Find the average customer rating per vehicle type:

select vehicle_type, avg(customer_rating)  as Customer_rating from bookings
group by Vehicle_Type
order by avg(customer_rating ) desc;

-- 9.Calculate the total booking value of rides completed successfully:

select sum(booking_value) as Total_Success_Value from bookings
where Booking_Status="success";

-- 10.List all incomplete rides along with the reason:

select Booking_ID, Incomplete_Rides_Reason from bookings
where Incomplete_Rides="Yes";







