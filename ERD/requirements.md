# Airbnb Database ERD - Requirements and Assumptions

## Entities Defined:
- User
- Property
- Booking
- Review
- Payment
- Amenity (optional)
- PropertyAmenity (junction table for many-to-many)

## Key Assumptions:
- A user can act as a host or guest.
- A host can list multiple properties.
- Guests can book multiple properties.
- Payments are associated with a single booking.
- Each booking is uniquely identified and references user and property.
- Reviews are optional and tied to a user and a property.
- Amenities are managed through a many-to-many relationship.

## Relationships Summary:
- User ↔ Property: One-to-many (host owns properties)
- User ↔ Booking: One-to-many (guest makes bookings)
- Property ↔ Booking: One-to-many
- Booking ↔ Payment: One-to-one
- Property ↔ Amenity: Many-to-many
