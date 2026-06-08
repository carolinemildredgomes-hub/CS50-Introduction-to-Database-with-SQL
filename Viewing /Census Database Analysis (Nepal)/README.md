# Census Database Analysis (Nepal)

## Project Overview

This project was completed as part of an Introduction to Databases with SQL course.

The goal was to analyze Nepal census data and create reusable SQL views that summarize information at different levels:

* Rural municipalities
* National totals
* District summaries
* Population rankings by district

Through this project, I practiced:

* SQL Views
* Filtering Data
* Aggregate Functions
* GROUP BY
* ORDER BY
* Data Analysis

---

## Database Schema

The database contains a table named `census`.

Columns:

* id
* district
* locality
* families
* households
* population
* male
* female

---

## Files

### rural.sql

Creates a view containing all census records associated with rural municipalities.

Concepts:

* CREATE VIEW
* WHERE
* LIKE

---

### total.sql

Creates a view containing national totals.

Concepts:

* SUM()
* Aggregate Functions

---

### by_district.sql

Creates a district-level summary.

Concepts:

* GROUP BY
* SUM()

---

### most_populated.sql

Creates a ranking of districts ordered by population.

Concepts:

* GROUP BY
* ORDER BY DESC

---

## Sample Queries

### Total Households in Nepal

SELECT households
FROM total;

Expected:

5642674

---

### Rural Municipality Count

SELECT COUNT(*)
FROM rural;

Expected:

461

---

### Most Populated District

SELECT district
FROM most_populated
LIMIT 1;

Expected:

Kathmandu

---

## Skills Demonstrated

* Database Design Fundamentals
* SQL Query Writing
* Data Aggregation
* Reporting Views
* Data Analysis Techniques

---

## What I Learned

This project taught me how governments and organizations can transform raw census data into meaningful reports using SQL views. I learned how to summarize data at multiple levels and create reusable analytical datasets for decision-making.

## Technologies Used

* SQLite
* SQL
* GitHub

---

Author: Caroline Mildred Gomes
