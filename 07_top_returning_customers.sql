## Critical Finding
-- Customer 16446 has 99.9% return rate (80,995 of 80,997 units returned).
-- Requires immediate investigation — potential data issue or problematic account.
SELECT 
    customerid,
    SUM(quantity) AS total_bought,
    (SELECT ABS(SUM(quantity)) FROM returns_cleaned WHERE customerid = 16446) AS total_returned
FROM clean_orders
WHERE customerid = 16446
GROUP BY customerid;