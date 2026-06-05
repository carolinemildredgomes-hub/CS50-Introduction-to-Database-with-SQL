# SQL Penetration Testing Simulation Project

## Overview

This project is a simulated SQL security exercise designed to demonstrate understanding of SQL queries, database manipulation, and query ordering. The goal is to practice how database operations interact with each other in a controlled environment.

This is NOT real-world hacking; it is an academic exercise focused on learning SQL behavior and database logic.

---

## Objectives

The task simulates a scenario where modifications are made to a database containing user accounts and logs. The objectives include:

1. Updating a user’s password securely using hashed values (MD5)
2. Removing log entries related to sensitive changes
3. Inserting false log data using subqueries to simulate misleading activity

---

## Database Schema

### users table

| Column   | Type | Description         |
| -------- | ---- | ------------------- |
| username | TEXT | Unique username     |
| password | TEXT | MD5 hashed password |

---

### user_logs table

| Column   | Type | Description                   |
| -------- | ---- | ----------------------------- |
| type     | TEXT | Action type (e.g., update)    |
| username | TEXT | User affected                 |
| password | TEXT | Stored password hash snapshot |

---

## SQL Concepts Used

This project demonstrates:

* UPDATE statements
* DELETE statements
* INSERT INTO ... SELECT
* Subqueries
* Data filtering with WHERE
* Database state manipulation
* Execution order of SQL operations

---

## Key Operations

### 1. Password Update

The admin password is updated using a hashed value (MD5) to ensure consistency with database security practices.

### 2. Log Removal

Logs related to the admin password change are deleted to simulate evidence removal in a controlled test environment.

### 3. Log Injection

A false log entry is inserted to simulate misleading activity by copying another user’s password hash using a subquery.

---

## Learning Outcomes

Through this exercise, the following skills were developed:

* Understanding relational database structures
* Writing complex SQL queries
* Using subqueries effectively
* Understanding execution order of SQL statements
* Practicing data integrity manipulation concepts
* Learning how logs interact with database updates

---

## Tools Used

* SQLite
* MD5 Hash Generator (for password hashing)
* SQL scripting

---

## File Structure

```
project/
│
├── hack.sql
├── reset.sql
├── database.db
└── README.md
```

---

## Important Note

This project is purely educational and performed in a sandbox environment. It is designed to teach database behavior and should never be applied to real systems.

---

## Author

Caroline Mildred Gomes
