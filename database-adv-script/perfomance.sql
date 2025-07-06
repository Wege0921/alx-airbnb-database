-- Initial unoptimized query to retrieve all bookings with user, property, and payment details

-- BEFORE Optimization
EXPLAIN ANALYZE
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;


-- AFTER Optimization: Assumes appropriate indexes exist
EXPLAIN ANALYZE
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;
