# Harvard Course Database Index Optimization

## Overview

This project focuses on database performance optimization using SQL indexes. The database models Harvard University's course registration system and contains information about students, courses, enrollments, requirements, and course-requirement relationships.

The objective is to analyze common database queries and create indexes that reduce table scans, improve lookup speed, and optimize joins.

## Database Schema

### students

* id
* name

### courses

* id
* department
* number
* semester
* title

### enrollments

* id
* student_id
* course_id

### requirements

* id
* name

### satisfies

* id
* course_id
* requirement_id

## Learning Objectives

Through this project I learned:

* Index design
* Composite indexes
* Query optimization
* Query execution plans
* Primary key lookups
* Database performance tuning
* Space versus speed trade-offs

## Indexes Created

### Enrollment Indexes

* idx_enrollments_student_id
* idx_enrollments_course_id

### Course Indexes

* idx_courses_department_semester
* idx_courses_department_number_semester
* idx_courses_title_semester
* idx_courses_semester

### Requirement Mapping Indexes

* idx_satisfies_course_id

## Performance Analysis

The following SQL command was used to verify optimization:

EXPLAIN QUERY PLAN

The goal was to eliminate table scans and replace them with index searches wherever possible.

## Typical Queries Optimized

1. Student enrollment history
2. Students enrolled in a specific course
3. Most enrolled courses
4. Departmental course searches
5. Requirement lookups
6. Requirement completion tracking
7. Course title searching

## Skills Demonstrated

* SQL
* SQLite
* Query Planning
* Database Indexing
* Performance Optimization
* Relational Database Design

## Future Improvements

* Covering indexes
* Partial indexes
* Materialized views
* Query caching
* PostgreSQL optimization techniques

## Author

Caroline Mildred Gomes

## License

Educational project for learning SQL optimization and database engineering.
