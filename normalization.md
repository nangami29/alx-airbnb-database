Normalization of Airbnb Database Design (Up to 3NF)
1. Introduction

Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity.
For this project, I applied normalization principles up to the Third Normal Form (3NF) to ensure the Airbnb database design is efficient and well-structured.

2. Step 1: First Normal Form (1NF)

Goal: Eliminate repeating groups and ensure each field contains only atomic (indivisible) values.

Actions taken:

Each table has a primary key (e.g., user_id, property_id, booking_id).

All attributes contain atomic values — for example, first_name and last_name are stored separately instead of a single full_name field.

There are no repeating groups or multi-valued fields.

Result:
All tables meet 1NF requirements.

3. Step 2: Second Normal Form (2NF)

Goal: Remove partial dependencies — every non-key attribute must depend on the entire primary key.

Actions taken:

Each table has a single-column primary key (UUID), so there are no partial dependencies.

All non-key attributes depend fully on their table’s primary key. For example:

In the Property table, attributes like name, description, and pricepernight depend only on property_id.

In the Booking table, attributes like start_date, end_date, and total_price depend only on booking_id.

Result:
All tables meet 2NF requirements.

4. Step 3: Third Normal Form (3NF)

Goal: Remove transitive dependencies — non-key attributes must depend only on the primary key.

Actions taken:

No non-key attribute depends on another non-key attribute.

Each table has been structured so that all columns depend directly on the primary key:

Example: In the User table, role, email, and phone_number depend directly on user_id.

Example: In the Booking table, total_price is calculated from pricepernight × number_of_nights, but it is stored for quick access — this is acceptable as a derived value.

Separate tables for User, Property, Booking, Payment, Review, and Message ensure no transitive dependencies exist between unrelated attributes.

Result:
The database design meets Third Normal Form (3NF).

5. Conclusion

After normalization, the database:
 Eliminates redundancy
 Maintains data integrity
 Improves query performance
 Is fully in 3NF

This ensures a clean, efficient, and scalable structure for the Airbnb system.