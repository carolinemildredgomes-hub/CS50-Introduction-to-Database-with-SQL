# Meteorites Database Cleaning Project

## Overview

This project is part of a SQL and Database Systems learning exercise focused on data cleaning, transformation, and loading (ETL).

The goal of the project is to import raw meteorite landing data from a CSV file into a SQLite database, clean the dataset according to a set of specifications, and prepare it for future analysis.

---

## Project Objectives

The project performs the following tasks:

* Imports meteorite data from a CSV file
* Creates a temporary staging table
* Converts empty values into NULL values
* Removes meteorites classified as "Relict"
* Rounds decimal values to two decimal places
* Sorts meteorites by:

  * Year (oldest to newest)
  * Name (alphabetically within the same year)
* Generates new sequential IDs beginning at 1
* Stores the cleaned data in a final SQLite table

---

## Database Schema

### meteorites

| Column    | Type    | Description                      |
| --------- | ------- | -------------------------------- |
| id        | INTEGER | Auto-generated unique identifier |
| name      | TEXT    | Meteorite name                   |
| class     | TEXT    | Meteorite classification         |
| mass      | REAL    | Meteorite mass in grams          |
| discovery | TEXT    | Either "Fell" or "Found"         |
| year      | INTEGER | Year of discovery                |
| lat       | REAL    | Latitude                         |
| long      | REAL    | Longitude                        |

---

## Data Cleaning Operations

### NULL Handling

Empty values in the following fields are converted to NULL:

* mass
* year
* lat
* long

### Decimal Rounding

Values are rounded to two decimal places for:

* mass
* lat
* long

### Record Filtering

Meteorites with:

Relict

as their nametype are removed from the final dataset.

### Sorting

Data is sorted by:

1. Year ascending
2. Name ascending

### ID Reassignment

Original IDs from the CSV file are discarded.

New IDs are automatically generated in sorted order using:

INTEGER PRIMARY KEY AUTOINCREMENT

---

## SQL Concepts Used

This project demonstrates:

* CREATE TABLE
* INSERT INTO ... SELECT
* ORDER BY
* CASE Statements
* CAST()
* ROUND()
* NULL Handling
* Filtering with WHERE
* Temporary Staging Tables
* AUTOINCREMENT Primary Keys
* Data Transformation Pipelines

---

## Files

### meteorites.csv

Raw meteorite landing dataset.

### import.sql

SQL script used to:

* Import data
* Clean data
* Create final database table

### meteorites.db

Generated SQLite database containing cleaned meteorite records.

---

## Learning Outcomes

Through this project, I gained practical experience with:

* Database design
* ETL workflows
* Data cleaning
* SQL data transformation
* SQLite database management
* Real-world dataset preparation

---

Author

Caroline Mildred Gomes
