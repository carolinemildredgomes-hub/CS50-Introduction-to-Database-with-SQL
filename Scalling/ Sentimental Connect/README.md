# Sentimental Connect

A MySQL database schema inspired by LinkedIn.

This project was completed as part of CS50 SQL's Scaling Data unit.

---

## Project Objective

Design a scalable MySQL database capable of storing:

- Users
- Schools and Universities
- Companies
- User Connections
- Educational Affiliations
- Employment Affiliations

while following relational database design principles.

---

## Database Design

The schema consists of six tables:

### users

Stores LinkedIn user accounts.

Fields:

- id
- first_name
- last_name
- username
- password

---

### schools

Stores educational institutions.

Fields:

- id
- name
- school_type
- location
- founded_year

Allowed school types:

- Primary
- Secondary
- Higher Education

---

### companies

Stores company pages.

Fields:

- id
- name
- industry
- location

Allowed industries:

- Technology
- Education
- Business

---

### connections

Stores mutual user connections.

Fields:

- user_id
- connected_user_id

This table implements a many-to-many relationship between users.

---

### school_affiliations

Stores educational history.

Fields:

- user_id
- school_id
- degree
- start_date
- end_date

Examples:

- BA
- MA
- PhD

---

### company_affiliations

Stores employment history.

Fields:

- user_id
- company_id
- title
- start_date
- end_date

Example:

- CEO and Chairman

---

## Relationships

Users ↔ Users

- Many-to-Many

Users ↔ Schools

- Many-to-Many

Users ↔ Companies

- Many-to-Many

---

## Technologies Used

- MySQL 8
- Docker
- SQL

---

## Sample Data Included

### Users

- Claudine Gay
- Reid Hoffman

### School

- Harvard University

### Company

- LinkedIn

### Affiliations

- Claudine Gay → Harvard University (PhD)
- Reid Hoffman → LinkedIn (CEO and Chairman)

---

## Learning Outcomes

Through this project I learned:

- MySQL data types
- ENUM
- YEAR
- DATE
- Foreign Keys
- Composite Primary Keys
- Many-to-Many Relationships
- Database Normalization
- Scalable Schema Design

---

## Author

Caroline Mildred Gomes
