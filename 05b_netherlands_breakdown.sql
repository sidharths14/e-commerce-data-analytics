-- Top Netherlands revenue
-- 98% of Netherlands revenue comes from 14646

select
customerid,
ROUND(SUM(quantity * unitprice), 2) AS revenue,
country
from clean_orders
group by customerid,country
having country='Netherlands'
order by revenue desc;