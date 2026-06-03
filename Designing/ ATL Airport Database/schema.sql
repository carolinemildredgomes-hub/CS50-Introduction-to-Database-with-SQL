-- =====================================================
-- ATL Airport Database Schema
-- Author: Caroline Mildred Gomes
-- CS50 SQL - Problem Set 2 (ATL)
-- =====================================================

-- -----------------------------
-- Passengers
-- -----------------------------
CREATE TABLE passengers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL CHECK(age > 0)
);

-- -----------------------------
-- Airlines
-- -----------------------------
CREATE TABLE airlines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    concourse TEXT NOT NULL
);

-- -----------------------------
-- Flights
-- -----------------------------
CREATE TABLE flights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_number INTEGER NOT NULL,

    airline_id INTEGER NOT NULL,

    departure_airport TEXT NOT NULL,
    arrival_airport TEXT NOT NULL,

    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,

    FOREIGN KEY (airline_id)
        REFERENCES airlines(id)
);

-- -----------------------------
-- Check Ins
-- -----------------------------
CREATE TABLE check_ins (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,

    check_in_time DATETIME NOT NULL,

    FOREIGN KEY (passenger_id)
        REFERENCES passengers(id),

    FOREIGN KEY (flight_id)
        REFERENCES flights(id)
);
