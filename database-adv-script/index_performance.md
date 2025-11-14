# Index Performance Analysis

## 1. High-Usage Columns Identified
- Users: email, created_at  
- Property: city, price, host_id  
- Booking: user_id, property_id, booking_date  

---

## 2. Example Queries Tested
1. Booking JOIN Users  
2. Property search by city  
3. User email lookup  

---

## 3. Performance Before Indexing

### Query A – Booking JOIN Users
**EXPLAIN ANALYZE (Before)**
