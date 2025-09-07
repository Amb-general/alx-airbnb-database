# Advanced SQL Joins

This directory contains SQL scripts for practicing complex queries using different types of joins.

## Files

- **joins_queries.sql**: Contains the SQL queries demonstrating INNER JOIN, LEFT JOIN, and FULL OUTER JOIN (with a MySQL alternative using UNION).
- **README.md**: This file, providing instructions and details.

## Queries

1. **INNER JOIN**  
   Retrieves all bookings and the respective users who made those bookings.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.  
   - Native syntax is provided for PostgreSQL/SQL Server.  
   - MySQL workaround is implemented using a `UNION` of LEFT JOIN and RIGHT JOIN.
# Advanced SQL Scripts

This directory contains SQL scripts for practicing advanced SQL concepts.

## Files

- **joins_queries.sql**: Demonstrates INNER JOIN, LEFT JOIN, and FULL OUTER JOIN (with MySQL alternative using UNION).
- **subqueries.sql**: Contains examples of correlated and non-correlated subqueries.
- **README.md**: This file, providing instructions and details.

## Queries Overview

### 1. Joins
- INNER JOIN: Retrieve all bookings and the users who made them.
- LEFT JOIN: Retrieve all properties and their reviews, including those with no reviews.
- FULL OUTER JOIN: Retrieve all users and all bookings, even if unmatched.

### 2. Subqueries
- Non-correlated subquery: Find all properties with an average rating greater than 4.0.
- Correlated subquery: Find all users who have made more than 3 bookings.
### 3. Aggregations and Window Functions
- **Aggregation (GROUP BY):** Finds the total number of bookings made by each user.
- **Window Function (RANK):** Ranks properties based on the total number of bookings they have received.

