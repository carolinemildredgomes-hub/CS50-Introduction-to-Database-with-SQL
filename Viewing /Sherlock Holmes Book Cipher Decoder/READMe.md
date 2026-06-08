# Sherlock Holmes Book Cipher Decoder

## Project Overview

This project was completed as part of an Introduction to Databases with SQL course.

The objective was to decode a hidden message stored as a book cipher using SQL.

The database contains every sentence from *The Adventures of Sherlock Holmes*. A set of encoded clues identifies specific portions of text hidden throughout the book. By extracting these portions and reconstructing them, the hidden message can be revealed.

---

## Learning Objectives

Through this project, I practiced:

* SQL Views
* SQL Joins
* String Manipulation
* substr()
* Database Reconstruction
* Cryptography Concepts
* Query Design

---

## Database Schema

### sentences

| Column   | Description                |
| -------- | -------------------------- |
| id       | Unique sentence identifier |
| sentence | Sentence text              |

---

## Solution Strategy

### Step 1

Create a helper table named `clues`.

This table stores:

* Sentence ID
* Character Start Position
* Message Length

### Step 2

Insert all cipher triplets into the helper table.

### Step 3

Join the helper table with the `sentences` table.

### Step 4

Use SQLite's `substr()` function to extract hidden message fragments.

### Step 5

Create a view named `message`.

The view contains:

| phrase                |
| --------------------- |
| Decoded text fragment |

Each row represents one piece of the hidden message.

---

## Files

### private.sql

Contains:

* Table creation
* Data insertion
* View creation

### study_notes.md

Contains detailed explanations of:

* substr()
* JOIN
* CREATE VIEW
* Book Cipher Logic

---

## Example Query

```sql
SELECT phrase
FROM message;
```

Returns the decoded message fragments.

---

## Technologies Used

* SQLite
* SQL
* GitHub

---

## Skills Demonstrated

* Relational Database Querying
* Data Extraction
* Text Processing
* View Construction
* SQL Problem Solving

---

## What I Learned

This project showed how SQL can be used not only for data analysis but also for solving cryptographic-style puzzles. By combining joins and string functions, hidden information can be reconstructed from structured datasets.

---

Author: Caroline Mildred Gomes

