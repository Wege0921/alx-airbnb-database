-- Insert Users
INSERT INTO Users (full_name, email, password, phone_number, role)
VALUES
('Alice Johnson', 'alice@example.com', 'hashed_pwd_1', '1234567890', 'host'),
('Bob Smith', 'bob@example.com', 'hashed_pwd_2', '0987654321', 'guest'),
('Charlie Young', 'charlie@example.com', 'hashed_pwd_3', '1122334455', 'guest');

-- Insert Properties
INSERT INTO Properties (host_id, title, description, location, price_per_night)
VALUES
(1, 'Cozy Cottage', 'A small, cozy cottage perfect for two.', 'Nairobi, Kenya', 65.00),
(1, 'Modern Apartment', 'Spacious apartment in the city center.', 'Addis Ababa, Ethiopia', 120.00);

-- Insert Bookings
INSERT INTO Bookings (user_id, property_id, check_in, check_out, total_price, status)
VALUES
(2, 1, '2025-07-01', '2025-07-05', 260.00, 'confirmed'),
(3, 2, '2025-08-10', '2025-08-15', 600.00, 'pending');

-- Insert Payments
INSERT INTO Payments (booking_id, amount, payment_method, payment_status, paid_at)
VALUES
(1, 260.00, 'credit_card', 'paid', '2025-06-30 10:15:00'),
(2, 600.00, 'paypal', 'pending', NULL);

-- Insert Reviews
INSERT INTO Reviews (user_id, property_id, rating, comment)
VALUES
(2, 1, 5, 'Fantastic stay! Very clean and cozy.'),
(3, 2, 4, 'Modern space but a bit noisy at night.');

-- Insert Amenities
INSERT INTO Amenities (name)
VALUES
('Wi-Fi'), ('Air Conditioning'), ('Kitchen'), ('Washer'), ('Free Parking');

-- Insert PropertyAmenities
INSERT INTO PropertyAmenities (property_id, amenity_id)
VALUES
(1, 1), (1, 3), (1, 4),    -- Cozy Cottage amenities
(2, 1), (2, 2), (2, 3), (2, 5);  -- Modern Apartment amenities
