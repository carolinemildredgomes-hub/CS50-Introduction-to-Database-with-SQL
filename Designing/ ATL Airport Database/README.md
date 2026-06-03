# ATL Airport Database

### Author

Caroline Mildred Gomes

## Overview

This project was completed as part of the CS50 SQL Problem Set.

The goal is to design a relational database for Hartsfield-Jackson Atlanta International Airport (ATL), one of the busiest airports in the world.

The database manages:

* Passengers
* Airlines
* Flights
* Passenger Check-ins

---

## Database Schema

### Passengers

Stores traveler information.

| Column     | Type    |
| ---------- | ------- |
| id         | INTEGER |
| first_name | TEXT    |
| last_name  | TEXT    |
| age        | INTEGER |

---

### Airlines

Stores airline information.

| Column    | Type    |
| --------- | ------- |
| id        | INTEGER |
| name      | TEXT    |
| concourse | TEXT    |

---

### Flights

Stores scheduled flights.

| Column            | Type     |
| ----------------- | -------- |
| id                | INTEGER  |
| flight_number     | INTEGER  |
| airline_id        | INTEGER  |
| departure_airport | TEXT     |
| arrival_airport   | TEXT     |
| departure_time    | DATETIME |
| arrival_time      | DATETIME |

---

### Check-ins

Stores passenger check-in records.

| Column        | Type     |
| ------------- | -------- |
| id            | INTEGER  |
| passenger_id  | INTEGER  |
| flight_id     | INTEGER  |
| check_in_time | DATETIME |

---

## Entity Relationship Diagram

Passengers
↓
Check-ins
↑
Flights
↑
Airlines

---

## Technologies Used

* SQLite
* SQL
* Relational Database Design
* CS50 SQL

---

## Sample Scenario

Passenger:
Amelia Earhart (39)

Airline:
Delta

Flight:
Flight 300

Route:
ATL → BOS

Departure:
2023-08-03 18:46

Arrival:
2023-08-03 21:09

Check-in:
2023-08-03 15:03

---

## Learning Outcomes

Through this project I practiced:

* Schema Design
* Database Modeling
* Primary Keys
* Foreign Keys
* Data Integrity Constraints
* Airport Operations Data Management

---

## Academic Project

Created as part of CS50 SQL and expanded for portfolio and learning purposes.

© Caroline Mildred Gomes
