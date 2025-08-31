-- seed.sql

-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '+1234567890', 'guest'),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '+1987654321', 'host'),
    ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '+1122334455', 'admin');

-- Insert Properties
INSERT INTO properties (property_id, user_id, title, description, location, price)
VALUES
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222',
     'Cozy Apartment in Lagos', '2 bedroom apartment near the beach.', 'Lagos, Nigeria', 75.00),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222',
     'Luxury Villa in Abuja', 'Spacious villa with pool and garden.', 'Abuja, Nigeria', 200.00);

-- Insert Bookings
INSERT INTO bookings (booking_id, user_id, property_id, check_in, check_out, total_price, status)
VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111',
     'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2025-09-01', '2025-09-05', 300.00, 'confirmed'),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111',
     'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2025-10-10', '2025-10-15', 1000.00, 'pending');

-- Insert Reviews
INSERT INTO reviews (review_id, booking_id, rating, comment)
VALUES
    ('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 5, 'Amazing stay! Very clean and cozy.'),
    ('ccccccc2-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 4, 'Great villa, but check-in was delayed.');

