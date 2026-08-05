SELECT 
    description,
    SUM(Quantity) AS total_sold
FROM clean_orders
GROUP BY description
ORDER BY total_sold DESC
LIMIT 20;