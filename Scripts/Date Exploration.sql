-- Date Exploration
SELECT 
-- Find The Date Of The First And Last Order 
MIN(order_date) first_order_date,
MAX(order_date) last_order_date,
-- How Many Year Of Sales Are Avaiable
DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) order_range_year
FROM gold.fact_sales;

SELECT 
-- Find The Youngest And Oldest Customer
DATEDIFF(YEAR,MIN(birthdate),GETDATE()) oldest,
DATEDIFF(YEAR,MAX(birthdate),GETDATE()) youngest
FROM gold.dim_customers