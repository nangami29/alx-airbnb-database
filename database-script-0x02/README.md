Airbnb Database – Sample Data Seeding
Overview

This folder contains SQL scripts used to populate the Airbnb Clone database with sample data. The goal is to simulate real-world usage by adding users, properties, bookings, payments, reviews, and messages.

Files

seed.sql – Contains all INSERT statements for the database tables.

README.md – Explains the purpose and structure of this directory.

Description

The script adds realistic sample data for testing and development, ensuring that relationships between tables (users, properties, bookings, etc.) are properly represented.

Each record uses UUIDs for unique identification and timestamps for tracking creation dates.

Example Data

Multiple Users (hosts, guests, admin)

Several Properties linked to hosts

Bookings made by guests

Corresponding Payments, Reviews, and Messages

Usage

Open MySQL Workbench.

Connect to your database (e.g., airbnb_db).

Run the following command to execute the seed script:

SOURCE path/to/seed.sql;


Verify data using simple queries such as:

SELECT * FROM User;
SELECT * FROM Property;

Author

Loureen Rachael Nangami
Project: ALX Airbnb Clone – Database Design Phase