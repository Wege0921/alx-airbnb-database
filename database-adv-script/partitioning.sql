-- Step 1: Rename old table (backup)
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create new partitioned table

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    -- other columns as needed
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions for different date ranges

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 4: Insert old data back (optional: with filtering or batching)

INSERT INTO bookings (id, user_id, property_id, start_date, end_date, status)
SELECT id, user_id, property_id, start_date, end_date, status FROM bookings_old;

-- Step 5: Drop old table (optional after validation)

-- DROP TABLE bookings_old;
