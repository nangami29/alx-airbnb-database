SELECT 
    u.first_name, 
    u.last_name, 
    COUNT(b.booking_id) AS total_bookings
FROM Booking b
JOIN `User` u ON b.user_id = u.user_id
GROUP BY 
    u.user_id, u.first_name, u.last_name
ORDER BY 
    total_bookings DESC;
    
    #window function--
WITH property_booking_counts AS(
SELECT
        property_id,
        COUNT(booking_id) AS booking_count
    FROM
        booking
    GROUP BY
        property_id)
 SELECT
    p.name AS property_name,
    IFNULL(c.booking_count, 0) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY IFNULL(c.booking_count, 0) DESC) AS row_number_rank,
    RANK() OVER (ORDER BY IFNULL(c.booking_count, 0) DESC) AS tied_rank
FROM
    property p
LEFT JOIN
    property_booking_counts c ON p.property_id = c.property_id
ORDER BY
    total_bookings DESC, p.name;