# Index Performance Report

## Objective
To improve query performance by identifying high-usage columns and adding appropriate indexes.

## Indexes Created

| Table     | Column          | Index Name                   |
|-----------|------------------|------------------------------|
| users     | id               | idx_users_id                 |
| bookings  | user_id          | idx_bookings_user_id         |
| bookings  | property_id      | idx_bookings_property_id     |
| properties| id               | idx_properties_id            |
| reviews   | property_id      | idx_reviews_property_id      |

## Performance Comparison

### Sample Query (before indexing)
```sql
EXPLAIN ANALYZE
SELECT u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;
