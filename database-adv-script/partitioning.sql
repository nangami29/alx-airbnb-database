-- 1. Rename the old table
ALTER TABLE booking RENAME TO booking_old;

-- 2. Create new partitioned table
CREATE TABLE booking (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_amount NUMERIC(10,2)
) PARTITION BY RANGE (start_date);

-- 3. Create partitions
CREATE TABLE booking_2023 PARTITION OF booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_2024 PARTITION OF booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE booking_2025 PARTITION OF booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- 4. Move data into the new table
INSERT INTO booking SELECT * FROM booking_old;
