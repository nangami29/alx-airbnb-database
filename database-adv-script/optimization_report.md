# Performance Analysis – Query Optimization

## 1. Initial Complex Query

The following query retrieves all bookings with user details, property details, and payment details:

```sql
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.user_id,
    b.property_id,
    u.first_name,
    u.last_name,
    u.email,
    p.title AS property_title,
    p.city,
    p.price,
    pay.amount,
    pay.status AS payment_status,
    pay.payment_date
FROM booking b
JOIN users u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
LEFT JOIN payment pay ON b.id = pay.booking_id;
