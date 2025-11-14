# Partition Performance Report – Booking Table

## 1. Overview
The Booking table had become very large, causing slow query performance when searching by date ranges.  
To improve query speed, the table was partitioned by **start_date** using yearly RANGE partitions.

---

## 2. Queries Tested

```sql
SELECT *
FROM booking
WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
