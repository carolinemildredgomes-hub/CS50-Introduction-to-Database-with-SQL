# AquaByte Partitioning Analysis

This project was completed as part of CS50 SQL's Scaling Data unit.

## Project Overview

AquaByte Explorer is a fictional submarine that continuously collects observations from the ocean floor and stores them across multiple boats on the surface.

The purpose of this project is to analyze different distributed database partitioning strategies and evaluate their advantages and disadvantages.

---

## Topics Covered

### Random Partitioning

Data is assigned randomly to available storage nodes.

Advantages:

- Even distribution of data
- Good load balancing
- Prevents hotspots

Disadvantages:

- Range queries require searching multiple nodes

---

### Partitioning by Hour

Data is assigned according to the hour contained in the timestamp.

Advantages:

- Efficient time-based queries
- Predictable data location

Disadvantages:

- Uneven data distribution
- Risk of overloaded nodes during peak observation periods

---

### Hash Partitioning

Data is assigned according to the hash value of its timestamp.

Advantages:

- Excellent load balancing
- Fast lookup for specific records
- Even data distribution

Disadvantages:

- Inefficient range queries
- Requires querying multiple nodes for time-based searches

---

## Concepts Learned

- Distributed Databases
- Horizontal Partitioning
- Load Balancing
- Hotspots
- Range Queries
- Hash Functions
- Scalability Trade-offs
- Data Distribution Strategies

---

## Key Takeaway

There is no perfect partitioning strategy.

Random partitioning and hash partitioning provide better load balancing, while partitioning by hour provides better support for time-based queries. Database architects must choose a strategy based on the expected workload and query patterns.

---

## Author

Caroline Mildred Gomes
