# ERD for Airbnb Database

## Entities
- User(user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
- Property(property_id, host_id, title, description, address, city, country, price_per_night, created_at)
- Booking(booking_id, user_id, property_id, check_in_date, check_out_date, total_price, status, created_at)
- Payment(payment_id, booking_id, amount, payment_date, payment_method, status)
- Review(review_id, user_id, property_id, rating, comment, created_at)

## Relationships
- User hosts Property
- User makes Booking
- Property has Booking
- Booking generates Payment
- User writes Review
- Property receives Review

User ↔ Booking:

One User can make many Bookings.

One Booking belongs to one User.

User (Host) ↔ Property:

One User (host) can list many Properties.

One Property belongs to one User (host).

Property ↔ Booking:

One Property can have many Bookings.

One Booking belongs to one Property.

Booking ↔ Payment:

One Booking can have many Payments (partial payments).

One Payment belongs to one Booking.

User ↔ Review:

One User can write many Reviews.

One Review is written by one User.

Property ↔ Review:

One Property can have many Reviews.

One Review belongs to one Property.
ER DIAGRAM
User (user_id PK) ───< Booking (booking_id PK) >─── Property (property_id PK)
        |                                  |
        |                                  |
        v                                  v
     Review (review_id PK)             Payment (payment_id PK)

