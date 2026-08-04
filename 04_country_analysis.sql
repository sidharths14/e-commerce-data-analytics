-- Country Revenue Analysis
-- Combines revenue, unique customers, and avg revenue per customer
-- Key Insight: Netherlands has only 9 customers but £31k avg spend
-- suggesting wholesale/B2B buyers, not retail consumers
-- Germany has 94 customers with £2.4k avg — better retail expansion target

SELECT
    country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue,
    COUNT(DISTINCT CustomerID) AS unique_customers,
    ROUND(SUM(Quantity * UnitPrice) / COUNT(DISTINCT CustomerID), 2) AS avg_revenue_per_customer
FROM clean_orders
GROUP BY country
ORDER BY revenue DESC;