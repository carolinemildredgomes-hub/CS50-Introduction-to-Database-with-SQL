# 💰 CS50 SQL – Moneyball Problem Set

This repository contains my solutions for the **CS50 SQL (Harvard)** problem set *Moneyball*.  
The project explores real baseball data from the early 2000s to analyze player value using SQL.

---

## 📌 Project Overview

The goal of this problem set is to help the Oakland Athletics (A’s) find undervalued baseball players using data-driven analysis.

Using a database (`moneyball.db`) containing:
- Players
- Salaries
- Performance statistics
- Teams

We write SQL queries to identify efficient and cost-effective players based on:
- Hits
- Home Runs
- RBIs (Runs Batted In)
- Salary efficiency

---

## 🗂️ Database Schema

The database includes four main tables:

### 👤 players
Stores player information (name, birth details, physical stats, etc.)

### 🏟️ teams
Stores MLB team information.

### 📊 performances
Stores yearly player statistics such as:
- Hits (H)
- Home Runs (HR)
- RBIs
- Games played

### 💵 salaries
Stores yearly player salaries.

---

## 🧠 Key Concepts Used

- SQL `JOIN`
- Aggregation (`AVG`, `ROUND`)
- Filtering (`WHERE`)
- Sorting (`ORDER BY`)
- Subqueries
- Common Table Expressions (CTEs)
- Set operations (`UNION`)
- Data analysis using ratios (salary efficiency)

---

## 📄 Problem Set Solutions

This repo contains SQL files for each task:

| File | Description |
|------|-------------|
| `1.sql` | Average player salary by year |
| `2.sql` | Cal Ripken Jr. salary history |
| `3.sql` | Ken Griffey Jr. home run history |
| `4.sql` | 50 lowest-paid players in 2001 |
| `5.sql` | Teams Satchel Paige played for |
| `6.sql` | Top teams by hits in 2001 |
| `7.sql` | Highest-paid player of all time |
| `8.sql` | Salary of top home run hitter (2001) |
| `9.sql` | Lowest-paying teams in 2001 |
| `10.sql` | Full player salary + HR history |
| `11.sql` | Cheapest players per hit |
| `12.sql` | Cheapest players per hit OR RBI |

---

## 🚀 Key Insight (Moneyball Concept)

This project demonstrates how **data analytics can reveal undervalued players** by comparing performance vs salary — a core idea behind the real-world Moneyball strategy.

---

## 🛠️ How to Run

1. Open SQLite:
```bash
sqlite3 moneyball.db
Run any query:
.read 1.sql
📚 Learning Outcome

Through this project, I improved my understanding of:

Relational database design
Complex SQL queries
Real-world data analysis
Efficient filtering and ranking techniques
📌 Author

Caroline Mildred Gomes
CS50 SQL – Harvard University (2024)
