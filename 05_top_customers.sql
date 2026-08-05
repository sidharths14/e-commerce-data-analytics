-- Top 10 Customers by Revenue

-- CRITICAL: Customer 14646 represents 4% of total revenue

-- and 98% of Netherlands revenue - extreme concentration risk



select customerid, 
ROUND(SUM(quantity * unitprice), 2) AS revenue, 
country from clean_orders 
group by customerid,country 
order by revenue desc 
limit 10;