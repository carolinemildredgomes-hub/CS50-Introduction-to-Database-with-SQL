# Boston AirBnB Analytics

## Project Overview

This project was completed as part of an Introduction to Databases with SQL course.

The objective was to analyze AirBnB data from Boston and create SQL views that provide insights into property listings, reviews, and availability trends.

The project demonstrates how relational databases can be used to answer business questions through filtering, aggregation, and joins.

---

## Database Schema

### listings

Contains information about AirBnB properties.

Columns:

* id
* property_type
* host_name
* accommodates
* bedrooms
* description

### reviews

Contains customer reviews.

Columns:

* id
* listing_id
* date
* reviewer_name
* comments

### availabilities

Contains daily availability records.

Columns:

* id
* listing_id
* date
* available
* price

---

## Views Created

### no_descriptions

Displays listing information without lengthy descriptions.

### one_bedrooms

Shows listings with exactly one bedroom.

### available

Displays available booking dates across listings.

### frequently_reviewed

Ranks the top 100 most reviewed listings.

### june_vacancies

Calculates how many days each listing remained vacant during June 2023.

---

## Skills Demonstrated

* SQL Query Design
* Relational Database Analysis
* Data Aggregation
* Business Intelligence Reporting
* Filtering and Sorting
* JOIN Operations
* View Creation

---

## Technologies Used

* SQLite
* SQL
* GitHub

---

## Example Queries

Find available listings on New Year's Eve:

```sql
SELECT *
FROM available
WHERE date = '2023-12-31';
```

Find the most reviewed property:

```sql
SELECT *
FROM frequently_reviewed
LIMIT 1;
```

Find June vacancies:

```sql
SELECT *
FROM june_vacancies
ORDER BY days_vacant DESC;
```

---

## What I Learned

This project strengthened my understanding of relational databases and how data from multiple tables can be combined to generate actionable insights. I learned how to use JOINs, aggregation functions, sorting, and filtering to answer real-world business questions.

---

Author: Caroline Mildred Gomes

