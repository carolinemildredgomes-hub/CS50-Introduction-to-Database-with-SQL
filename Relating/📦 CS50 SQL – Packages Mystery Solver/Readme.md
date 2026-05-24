# 📦 CS50 SQL – Packages Mystery Solver

This repository contains my solution to the **CS50 SQL “Packages” problem set**, where the goal is to investigate a fictional package delivery system in Boston using SQL queries.

---

## 🧠 Problem Overview

In this project, we act as a mail clerk for the city of Boston. Several customers report missing packages, and we must use a database (`packages.db`) to determine:

- 📍 The final location of each package  
- 🏷️ The type of address (residential, business, warehouse, etc.)  
- 📦 The contents of each package  
- 👤 Who ultimately has the package  

---

## 🗃️ Database Schema

The database includes four main tables:

- **addresses** – Stores address details and types  
- **drivers** – Delivery drivers  
- **packages** – Package details and routes  
- **scans** – Logs of package pickups and deliveries  

---

## 🧩 Files Included

- `log.sql` → Step-by-step SQL queries used to solve each mystery  
- `answers.txt` → Final answers for each missing package case  
- `packages.db` → SQLite database used for analysis (not included in submission in most cases)

---

## 🔎 Mysteries Solved

### 1. The Lost Letter
Tracked a congratulatory letter from sender to recipient using address lookups and scan history.

---

### 2. The Devious Delivery
Investigated a package with missing sender information and traced its movement using scan logs.

---

### 3. The Forgotten Gift
Followed a delayed gift shipment using sender/receiver mapping and scan timestamps to determine final delivery location.

---

## 🛠️ Tools Used

- SQLite
- SQL queries (SELECT, JOIN, WHERE, ORDER BY, subqueries)
- CS50 SQL environment

---

## 📊 Key Skills Demonstrated

- Relational database querying  
- Data filtering and aggregation  
- JOIN operations  
- Real-world problem solving using SQL  
- Debugging query logic step-by-step  

---

## 🚀 How to Run

1. Open SQLite:
```bash
sqlite3 packages.db
Run queries from log.sql step by step.
Verify results manually or using CS50 check tool:
check50 cs50/problems/2024/sql/packages
📌 Author
Caroline Mildred Gomes
Created as part of the Harvard CS50 SQL course practice problems.
