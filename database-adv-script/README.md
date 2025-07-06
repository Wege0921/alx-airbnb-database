# Complex SQL Joins – ALX Airbnb Database

## Objective
To master SQL joins by writing complex queries using `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.

## Files
- `joins_queries.sql`: Contains SQL queries using different types of joins
- `README.md`: Explains the purpose and content of the SQL file

## Queries Included

1. **INNER JOIN**  
   Retrieves all bookings and the respective users who made those bookings.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.  
   _Note: Implemented using `UNION` of LEFT and RIGHT JOINs to simulate FULL OUTER JOIN (MySQL-compatible)._

## Repository Structure

