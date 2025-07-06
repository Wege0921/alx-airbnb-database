# Partitioning Performance Report

## Objective

Partition the `bookings` table by `start_date` to improve query performance on date-range queries.

---

## Implementation

- Created `bookings` table partitioned by RANGE on `start_date`.
- Created yearly partitions: `bookings_2023`, `bookings_2024`.
- Migrated existing data into the new partitioned table.

---

## Performance Testing

### Query Tested

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
