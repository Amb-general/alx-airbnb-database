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

