# Database Normalization (to 3NF)

## Step 1: First Normal Form (1NF)
- All attributes are atomic.
- Removed repeating groups (e.g., multiple phone numbers in `User` were moved to a new `UserPhones` table).
- Example:
  - **Before:** User(user_id, name, emails)
  - **After:** User(user_id, name), UserEmails(email_id, user_id, email)

## Step 2: Second Normal Form (2NF)
- Ensured no partial dependency.
- For example, in `Booking(user_id, property_id, check_in, check_out, total_price)`:
  - `total_price` depends on both `user_id` and `property_id` (whole key).
  - If we stored `user_name` here, that would violate 2NF → moved to `User`.

## Step 3: Third Normal Form (3NF)
- Removed transitive dependencies.
- For example:
  - `Property(property_id, host_id, city, country)`
  - If `country` could be derived from `city`, it would be a transitive dependency.
  - Solution: Create a `City(city_id, city_name, country)` table and reference it.

## Final Schema (3NF)
- **User(user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)**
- **Property(property_id, host_id, title, description, address, city_id, price_per_night, created_at)**
- **Booking(booking_id, user_id, property_id, check_in_date, check_out_date, total_price, status, created_at)**
- **Payment(payment_id, booking_id, amount, payment_date, payment_method, status)**
- **Review(review_id, user_id, property_id, rating, comment, created_at)**
- **City(city_id, city_name, country)**
- **UserPhones(phone_id, user_id, phone_number)**

