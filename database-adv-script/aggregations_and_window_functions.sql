-- 1. Find the total number of bookings made by each user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM 
    users
LEFT JOIN 
    bookings ON users.id = bookings.user_id
GROUP BY 
    users.id, users.name
ORDER BY 
    total_bookings DESC;


-- 2. Rank properties using ROW_NUMBER() based on the total number of bookings
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_rank
FROM 
    bookings
GROUP BY 
    property_id;


-- 3. Rank properties using RANK() based on the total number of bookings
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM 
    bookings
GROUP BY 
    property_id;
