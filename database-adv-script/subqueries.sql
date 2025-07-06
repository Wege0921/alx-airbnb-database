-- 1. Find all properties where the average rating is greater than 4.0 using a subquery
SELECT 
    id, name
FROM 
    properties
WHERE 
    id IN (
        SELECT 
            property_id
        FROM 
            reviews
        GROUP BY 
            property_id
        HAVING 
            AVG(rating) > 4.0
    );


-- 2. Correlated subquery: Find users who have made more than 3 bookings
SELECT 
    id, name
FROM 
    users
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            bookings 
        WHERE 
            bookings.user_id = users.id
    ) > 3;
