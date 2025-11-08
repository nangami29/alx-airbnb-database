
USE airbnb_db;

SELECT 
user.first_name,
user.last_name,
Booking.booking_id,
Booking.property_id,
Booking.user_id,
Booking.total_price
FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id;

SELECT 
property.property_id,
property.host_id,
property.description,
property.location,
property.price_per_night,
property.name,
Review.rating
FROM property
LEFT JOIN review ON property.property_id=review.property_id;

-- FULL OUTER JOIN simulation
SELECT 
    u.first_name,
    u.last_name,
    u.email,
    u.user_id,
    b.booking_id,
    b.property_id,
    b.total_price
FROM `User` AS u
LEFT JOIN Booking AS b
    ON u.user_id = b.user_id

UNION

SELECT 
    u.first_name,
    u.last_name,
    u.email,
    u.user_id,
    b.booking_id,
    b.property_id,
    b.total_price
FROM `User` AS u
RIGHT JOIN Booking AS b
    ON u.user_id = b.user_id

ORDER BY user_id;

