# Performance Monitoring and Optimization

## 1. Overview
This report details monitoring and refining the performance of frequently used queries in the Airbnb database.  
Tools used:
- `EXPLAIN` / `EXPLAIN ANALYZE`
- `SHOW PROFILE` (MySQL only)

Goal: Identify bottlenecks, implement schema changes or indexes, and measure performance improvement.

---

## 2. Queries Monitored

### Query 1: Fetch bookings for a user
```sql
SELECT *
FROM booking
WHERE user_id = 12;
