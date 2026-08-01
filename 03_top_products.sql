-- Top 20 Products by Revenue
-- Excludes operational entries (POSTAGE, Manual)
-- Insight: Business sells niche gift/novelty items
SELECT 
    Description,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue
FROM clean_orders
WHERE Description NOT IN ('POSTAGE', 'Manual')
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 20;