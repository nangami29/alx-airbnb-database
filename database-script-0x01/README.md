Airbnb Clone Database Setup
Overview

This project is part of building an Airbnb Clone, starting with the database setup using MySQL Workbench.
The database stores key information such as users, listings, and bookings.

Steps
1. Create the Database
CREATE DATABASE airbnb_db;
USE airbnb_db;

2. Create Tables

Example structure:

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255)
);
3. Refresh Schemas

In MySQL Workbench, go to Navigator → Schemas, then click the Refresh icon.
You should now see airbnb_db listed.