# Don't Panic – Java SQLite Penetration Test

This project was completed as part of CS50 SQL. It demonstrates how Java can interact with a SQLite database to execute SQL commands and update data programmatically.

---

## Project Overview

In this exercise, we simulate a penetration testing scenario where a Java program connects to a SQLite database and modifies the administrator's password.

The project focuses on:

- Connecting Java to a SQLite database
- Executing SQL statements from Java
- Using prepared statements for secure input handling
- Working with JDBC (Java Database Connectivity)

---

## Files Included

```text
dont-panic-java/
│
├── Hack.java
├── dont-panic.db
├── reset.sql
└── sqlite-jdbc-3.43.0.0.jar
```

---

## How It Works

1. The program connects to a SQLite database using JDBC.
2. It prompts the user for a new password.
3. It uses a prepared statement to safely inject the value.
4. It updates the password of the `admin` user.
5. The database connection is closed properly.

---

## Example Usage

### Compile the program

```bash
javac Hack.java
```

### Run the program

```bash
java -cp .:sqlite-jdbc-3.43.0.0.jar Hack
```

### Input Example

```text
Enter the new password:
newpassword123
```

---

## SQL Operation Performed

```sql
UPDATE "users"
SET "password" = ?
WHERE "username" = 'admin';
```

---

## Key Concepts Learned

### 1. JDBC Connection
Java connects to SQLite using:

```java
DriverManager.getConnection("jdbc:sqlite:dont-panic.db");
```

---

### 2. Statement Execution
SQL commands are executed using:

- `Statement` (basic execution)
- `PreparedStatement` (secure execution)

---

### 3. Prepared Statements (Security Best Practice)

Prepared statements prevent SQL injection by separating SQL logic from user input:

```java
sqliteStatement.setString(1, password);
```

---

### 4. Resource Management

Always close connections:

```java
sqliteConnection.close();
```

---

## Technologies Used

- Java
- SQLite
- JDBC (Java Database Connectivity)
- CS50 SQL Toolkit

---

## Learning Outcome

This project demonstrates how backend applications can securely interact with databases and how prepared statements improve security in real-world applications.

---

## Author

Caroline Mildred Gomes
