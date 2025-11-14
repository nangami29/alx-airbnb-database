-- Initial complex query: Retrieve all bookings with user, property, and payment details

SELECT 
    b.id AS booking_id,
    b.start_dateproperty,
    b.user_id,
    b.property_id,
    u.first_name,
    u.last_name,
    u.email,
    p.name AS property_title,
    p.location,
    p.price,
    pay.amount,
    pay.status AS payment_status,
    pay.payment_date
FROM booking b
JOIN user u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
LEFT JOIN payment pay ON b.id = pay.booking_id;

SELECT
    b.id,
    b.booking_date,
    u.first_name,
    u.email,
    p.title,
    pay.amount
FROM booking b
JOIN users u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
LEFT JOIN payment pay ON pay.booking_id = b.id;
