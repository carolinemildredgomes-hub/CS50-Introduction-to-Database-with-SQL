# Don't Panic – Python Database Hack

This project was completed as part of CS50 SQL.

## Project Goal

Create a Python program that connects to a SQLite database and updates the administrator's password.

The project introduces:

- Python database connections
- SQLite integration
- SQL execution from Python
- Prepared statements
- SQL injection prevention

---

## Files

```text
dont-panic/
│
├── dont-panic.db
├── hack.py
├── reset.sql
└── README.md
```

## Technologies Used

- Python
- SQLite
- CS50 SQL Library

---

## How It Works

1. Connect to `dont-panic.db`
2. Prompt the user for a new password
3. Update the administrator account
4. Save changes to the database

---

## Example

Run:

```bash
python hack.py
```

Input:

```text
Enter a password: supersecret
```

The program updates:

```text
admin → supersecret
```

---

## Key Concepts Learned

- Python variables
- User input
- SQLite database connections
- SQL UPDATE statements
- Prepared statements
- SQL injection protection

---

## Author

Caroline Mildred Gomes
