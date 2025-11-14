
#Indexes for Users table


CREATE INDEX idx_users_email
ON user (email);

CREATE INDEX idx_users_created_at
ON user (created_at);


 #Indexes for Property table

CREATE INDEX idx_property_host_id
ON property (host_id);

CREATE INDEX idx_property_city
ON property (location);

CREATE INDEX idx_property_price
ON property (price);

# Indexes for Booking table


CREATE INDEX idx_booking_user_id
ON booking (user_id);

CREATE INDEX idx_booking_property_id
ON booking (property_id);

CREATE INDEX idx_booking_date
ON booking (booking_date);

EXPLAIN ANALYZE
SELECT *
FROM booking
JOIN users ON users.id = booking.user_id
WHERE booking.booking_date > '2024-01-01';

SELECT *
FROM property
WHERE city = 'Nairobi'
ORDER BY price;


SELECT *
FROM users
WHERE email = 'test@example.com';

