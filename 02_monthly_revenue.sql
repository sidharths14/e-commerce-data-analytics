-- Monthly Revenue Trend
-- Shows total revenue per month, ordered chronologically
-- Note: December 2011 is incomplete (only 9 days of data)
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS sale_month,
    ROUND(SUM(UnitPrice * Quantity), 2) AS total_revenue
FROM clean_orders
GROUP BY sale_month
ORDER BY sale_month ASC;