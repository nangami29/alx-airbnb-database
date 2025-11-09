SELECT *
FROM property
WHERE property_id IN(SELECT property_id
FROM review GROUP BY property_id HAVING AVG(rating)>4.0);

SELECT user_id,
first_name,
last_name,
email
FROM User u
WHERE
	3 < (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
    );