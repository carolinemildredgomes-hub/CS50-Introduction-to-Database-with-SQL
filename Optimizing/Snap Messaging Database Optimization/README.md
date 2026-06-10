# Snap Messaging Database Optimization

Author: Caroline Mildred Gomes

## Overview

This project is based on a fictional photo messaging application inspired by Snapchat. The goal is not only to write correct SQL queries but also to optimize them using indexes and query planning techniques.

The project focuses on:

* Indexes
* Query optimization
* EXPLAIN QUERY PLAN
* Primary key lookups
* Covering indexes
* Aggregation
* Set operations

## Database Schema

### users

* id
* username
* phone_number
* joined_date
* last_login_date

### friends

* user_id
* friend_id
* friendship_date

### messages

* id
* from_user_id
* to_user_id
* picture
* sent_timestamp
* viewed_timestamp
* expires_timestamp

## Learning Objectives

After completing this project, I learned:

* How indexes improve database performance
* How SQLite chooses execution plans
* How to verify index usage using EXPLAIN QUERY PLAN
* How GROUP BY and ORDER BY affect performance
* How primary key indexes work
* How INTERSECT can be used to find common relationships

## Tasks Completed

### Task 1

Find active users who logged in after 2024-01-01.

Index Used:

search_users_by_last_login

### Task 2

Find expiration timestamp for a specific message.

Index Used:

Primary Key Index

### Task 3

Find the top three recipients of messages sent by a specific user.

Index Used:

search_messages_by_from_user_id

### Task 4

Find the most popular user based on messages received.

Index Used:

search_messages_by_to_user_id

### Task 5

Find mutual friends between two users.

Index Used:

sqlite_autoindex_friends_1

## Key SQL Concepts

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* LIMIT
* INTERSECT
* Subqueries
* Aggregation Functions
* Index Optimization

## Performance Verification

All queries were tested using:

EXPLAIN QUERY PLAN

to verify that SQLite utilized the required indexes.

## Skills Demonstrated

* Database Design
* SQL Optimization
* Query Analysis
* Relational Databases
* SQLite
* Performance Tuning

## Future Improvements

* Add message streak calculations
* Friend recommendation system
* User engagement dashboard
* Real-time analytics
* Advanced indexing strategies

## License

Educational project completed for SQL learning and database optimization practice.
