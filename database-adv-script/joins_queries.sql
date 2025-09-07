-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    b.booking_id,
    b.property_id,
    b.booking_date,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM Bookings b
INNER JOIN Users u
    ON b.user_id = u.user_id;


-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM Properties p
LEFT JOIN Reviews r
    ON p.property_id = r.property_id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking 
-- or a booking is not linked to a user.
-- Note: Some databases (like MySQL) do not support FULL OUTER JOIN directly.

-- PostgreSQL / SQL Server syntax:
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.booking_date
FROM Users u
FULL OUTER JOIN Bookings b
    ON u.user_id = b.user_id;

-- MySQL equivalent using UNION:
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.booking_date
FROM Users u
LEFT JOIN Bookings b
    ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.booking_date
FROM Users u
RIGHT JOIN Bookings b
    ON u.user_id = b.user_id;

