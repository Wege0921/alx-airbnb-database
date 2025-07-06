-- Create indexes for optimization

-- Users table: Primary key used in joins
CREATE INDEX idx_users_id ON users(id);

-- Bookings table: user_id used in joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Bookings table: property_id used in joins and aggregations
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Properties table: id used in joins
CREATE INDEX idx_properties_id ON properties(id);

-- Reviews table: property_id used in joins
CREATE INDEX idx_reviews_property_id ON reviews(property_id);


-- Analyze query performance BEFORE and AFTER indexing
-- Sample: Get number of bookings per user

-- Before Indexing:
-- EXPLAIN ANALYZE
-- SELECT u.name, COUNT(b.id)
-- FROM users u
-- JOIN bookings b ON u.id = b.user_id
-- GROUP BY u.name;

-- After Indexing:
EXPLAIN ANALYZE
SELECT u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;
