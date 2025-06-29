# Airbnb Database Normalization Report

## Objective:
Ensure that the Airbnb database schema is normalized to the Third Normal Form (3NF) to reduce redundancy and improve data integrity.

---

## 1NF: First Normal Form

**Rules:**
- All tables have atomic values.
- No repeating groups or arrays.

**Example:**
- `Amenities` are stored in a separate table and not as a comma-separated list in `Properties`.

**Status:** ✅ Achieved

---

## 2NF: Second Normal Form

**Rules:**
- Already in 1NF.
- Every non-key attribute depends on the whole primary key (no partial dependencies).

**Example:**
- In `Bookings`, fields like `check_in`, `total_price`, etc. depend fully on the booking `id`.

**Status:** ✅ Achieved

---

## 3NF: Third Normal Form

**Rules:**
- Already in 2NF.
- No transitive dependencies (non-key attributes should not depend on other non-key attributes).

**Example:**
- In `Users`, the `phone_number` or `email` fields do not depend on `name`; they all depend on the primary key.
- In `Payments`, the booking data is not duplicated — it is linked via `booking_id`.

**Status:** ✅ Achieved

---

## Summary

The current schema adheres to 3NF:
- All fields are atomic and clearly structured.
- All relationships are logically organized via foreign keys.
- No transitive or partial dependencies exist.

