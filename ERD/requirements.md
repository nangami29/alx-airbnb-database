Requirements for the Arbnb Datatabase
Entities and attributes
1. User

user_id (PK, UUID, Indexed)
first_name (VARCHAR, NOT NULL)

last_name (VARCHAR, NOT NULL)

email (VARCHAR, UNIQUE, NOT NULL)

password_hash (VARCHAR, NOT NULL)

phone_number (VARCHAR, NULL)

role (ENUM: guest, host, admin, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

2. Property

property_id (PK, UUID, Indexed)

host_id (FK → User.user_id)

name (VARCHAR, NOT NULL)

description (TEXT, NOT NULL)

location (VARCHAR, NOT NULL)

pricepernight (DECIMAL, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)

3. Booking

booking_id (PK, UUID, Indexed)

property_id (FK  Property.property_id)

user_id (FK-  User.user_id)

start_date (DATE, NOT NULL)

end_date (DATE, NOT NULL)

total_price (DECIMAL, NOT NULL)

status (ENUM: pending, confirmed, canceled, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

4. Payment

payment_id (PK, UUID, Indexed)

booking_id (FK - Booking.booking_id)

amount (DECIMAL, NOT NULL)

payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)

5. Review

review_id (PK, UUID, Indexed)

property_id (FK -Property.property_id)

user_id (FK -User.user_id)

rating (INTEGER, CHECK 1–5, NOT NULL)

comment (TEXT, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

6. Message

message_id (PK, UUID, Indexed)

sender_id (FK User.user_id)

recipient_id (FK  User.user_id)

message_body (TEXT, NOT NULL)

sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

Relationships

User–Property: One User (Host) can own many Properties (1:N).

User–Booking: One User (Guest) can make many Bookings (1:N).

Property–Booking: One Property can have many Bookings (1:N).

Booking–Payment: Each Booking has one Payment (1:1).

Property–Review: One Property can have many Reviews (1:N).

User–Review: One User can write many Reviews (1:N).