# Optimization Report

## Objective
Improve performance of a complex query retrieving bookings with user, property, and payment details.

---

## Initial Query Analysis (Before Optimization)

**Query Overview**:
```sql
SELECT
    b.id, u.name, p.name, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;
