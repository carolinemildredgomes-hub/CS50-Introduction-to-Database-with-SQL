# 🏫 DESE SQL Problem Set (CS50 SQL)

This repository contains my solutions to the **CS50 SQL problem set: DESE (Massachusetts Department of Elementary and Secondary Education)**.  
The project focuses on analyzing real-world education data using SQL queries.

---

## 📊 About the Project

The DESE database contains information about:
- School districts in Massachusetts
- Public and charter schools
- Graduation rates
- District expenditures
- Teacher evaluations

Using SQL, we explore relationships between education funding, school performance, and student outcomes.

---

## 🗂️ Database Schema Overview

The database (`dese.db`) includes the following tables:

- **districts** → Information about school districts
- **schools** → Information about individual schools
- **expenditures** → Per-pupil spending per district
- **graduation_rates** → Graduation statistics per school
- **staff_evaluations** → Teacher performance evaluations

---

## 🧠 Skills Used

- SELECT queries
- WHERE filtering
- JOIN operations
- GROUP BY and HAVING
- Aggregate functions (AVG, COUNT)
- Subqueries
- Sorting with ORDER BY

---

## 📁 Files Included

Each file contains a single SQL query:

- `1.sql` → Public schools in Massachusetts  
- `2.sql` → Non-operational districts  
- `3.sql` → Average district per-pupil expenditure  
- `4.sql` → Top 10 cities with most public schools  
- `5.sql` → Cities with ≤ 3 public schools  
- `6.sql` → Schools with 100% graduation rate  
- `7.sql` → Schools in Cambridge district  
- `8.sql` → Districts and number of pupils  
- `9.sql` → District(s) with least pupils  
- `10.sql` → Top 10 districts by spending  
- `11.sql` → Expenditure vs graduation rate analysis  
- `12.sql` → Best performing public districts  
- `13.sql` → Custom SQL analysis question  

---

## 🚀 How to Run

To test any query:

```bash
sqlite3 dese.db
.read 1.sql

Or run directly:

cat 1.sql | sqlite3 dese.db
🎯 Goal of the Project

The goal is to practice:

Real-world data analysis using SQL
Multi-table relationships
Decision-making from data insights

👨‍💻 Author
Caroline Mildred Gomes

Completed as part of CS50 SQL (Harvard University) problem sets.
