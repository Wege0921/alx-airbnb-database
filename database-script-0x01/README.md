# Airbnb Database Schema (DDL)

This schema defines the core tables for an Airbnb-like application including:

- `Users`: Hosts and Guests
- `Properties`: Listings created by hosts
- `Bookings`: Reservations made by guests
- `Payments`: Linked to bookings
- `Reviews`: Ratings/comments by guests
- `Amenities`: Services or features (Wi-Fi, Pool, etc.)
- `PropertyAmenities`: Many-to-many table connecting properties with amenities

## Highlights
- Enforces data integrity using `FOREIGN KEY`, `CHECK`, and `NOT NULL` constraints.
- Creates indexes for frequently searched columns like `email`, `host_id`, and `property_id`.
- Designed for extensibility and normalization (up to 3NF).
