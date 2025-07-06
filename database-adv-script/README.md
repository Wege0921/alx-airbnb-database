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

# Subqueries – ALX Airbnb Database

## Objective
Practice writing both correlated and non-correlated SQL subqueries.

## Files
- `subqueries.sql`: Contains SQL queries using subqueries.
- `README.md`: Describes the purpose and structure of the queries.

## Queries Included

1. **Non-Correlated Subquery**  
   Retrieves all properties where the average rating from reviews is greater than 4.0.

2. **Correlated Subquery**  
   Retrieves users who have made more than 3 bookings.

## Repository Structure

# Aggregations and Window Functions – ALX Airbnb Database

## Objective
Practice using SQL aggregation functions and window functions to analyze booking data.

## Files
- `aggregations_and_window_functions.sql`: SQL script with aggregation and window function queries.
- `README.md`: Explanation of the purpose and structure of the queries.

## Queries Included

1. **Aggregations using COUNT + GROUP BY**  
   Retrieves the total number of bookings made by each user.

2. **Window Function using RANK()**  
   Ranks properties based on the total number of bookings they have received.

## Repository Structure



