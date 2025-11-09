# SQL Join Queries – Airbnb Database

## Overview
This script (`joins_queries.sql`) demonstrates advanced SQL JOIN operations on the `airbnb_db` database.  
It includes examples of:

1. **INNER JOIN** – retrieves only matching rows between tables.
2. **LEFT JOIN** – retrieves all rows from the left table, even if there are no matches in the right table.
3. **FULL OUTER JOIN (simulated)** – retrieves all rows from both tables, including unmatched rows.

These queries are designed for practice and to better understand how different types of joins work.

---

## Files
- **joins_queries.sql** – Contains the SQL JOIN queries.
- **seed.sql** – (Required) Populates the database with sample users, properties, bookings, reviews, and messages.

---

## Usage Instructions

1. Open your MySQL client (MySQL Workbench, CLI, or VS Code SQL extension).
2. Make sure the database is created and seeded by running:
 seed.sql;


# Correlated and non-correlated subqueries
##
 ## Non-correlated subquery
 - it is a standalone subquery where the inner query runs first and only once.
 - it's result are then passed to the outer query
 ### Find all properties where the average rating is greater than 4

 
 2. Correlated Subquery
- A correlated subquery is NOT standalone.
- It references columns from the outer query.
- It runs once for *each row* processed by the outer query.
- This can be less efficient but is very powerful.