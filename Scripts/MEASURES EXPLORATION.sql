-- MEASURES EXPLORATION 
SELECT 
-- Find the total sales 
SUM(sales_amount) AS total_sales, 
-- Find how many items are sold
SUM(quantity) total_items_sold,
-- Find the average sales price 
AVG(price) avg_price,
-- Find the total number of order
COUNT(DISTINCT order_number) total_order
FROM gold.fact_sales;

-- Find the total number of PRODUCTS
SELECT
COUNT(DISTINCT product_key) total_products 
FROM gold.dim_products;


SELECT
-- Find the total number of Customers
COUNT(DISTINCT customer_id) total_customers,
-- Find the total number of Customers that has placed an order
COUNT(DISTINCT customer_key) customer_placed_order
FROM gold.dim_customers;

-- Generate a report that shows all key metrics of the business
-- Find the total sales 
SELECT 'Total Sales' as measure_name ,SUM (sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
-- Find how many items are sold
 SELECT 'Total_Items Sold' as measure_name ,SUM(quantity) measure_value FROM gold.fact_sales
UNION ALL 
-- Find the average sales price 
SELECT 'Avg Price' as measure_name,AVG(price) measure_value FROM gold.fact_sales
UNION ALL  
-- Find the total number of order
SELECT 'Total Order' as mearsure_name,COUNT(DISTINCT order_number) measure_value FROM gold.fact_sales
UNION ALL 
-- Find the total number of Customers
SELECT 'Total Customers' as measure_name,COUNT(DISTINCT customer_id) measure_value  FROM gold.dim_customers
UNION ALL 
-- Find the total number of Customers that has placed an order
SELECT 'Customer Placed Order' as measure_name ,COUNT(DISTINCT customer_key) measure_value FROM gold.dim_customers
UNION ALL 
-- Find the total number of PRODUCTS
SELECT 'Total Products' as measure_name ,COUNT(DISTINCT product_key) meaasure_value 
FROM gold.dim_products;





