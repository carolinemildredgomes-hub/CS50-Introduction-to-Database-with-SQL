# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.
# Random Partitioning

Random partitioning distributes observations evenly across all boats, helping prevent any single boat from becoming overloaded. This approach improves load balancing and storage utilization. However, queries that search for a range of timestamps may need to be executed on every boat because related observations can be stored anywhere in the system.

# Partitioning by Hour

Partitioning by hour makes time-based queries efficient because observations from a specific time range are stored on predictable boats. Researchers can often query only one boat instead of the entire system. However, if observations occur more frequently during certain hours, one boat may receive far more data than the others, creating an uneven workload and storage imbalance.

# Partitioning by Hash Value

Hash partitioning distributes observations evenly across all boats and avoids overloading any single boat. It is also efficient when searching for a specific observation because the hash value identifies exactly where the record is stored. However, range-based queries such as searching for all observations during a particular hour often require querying every boat because related timestamps may be distributed across the entire system.
