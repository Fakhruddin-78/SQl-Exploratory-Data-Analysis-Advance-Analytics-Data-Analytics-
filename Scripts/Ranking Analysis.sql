-- Which 5 product generate the highest revenue 
SELECT TOP  5
p.product_name,
SUM(sales_amount) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p 
ON  p.product_key = s.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Another way to find the 5 best performing products in term of Total Revenue
SELECT * -- (For more flexibility and for complex report )
FROM
(SELECT TOP  5
p.product_name,
SUM(sales_amount) total_revenue,
ROW_NUMBER() OVER (ORDER BY SUM(sales_amount) DESC) AS rank_product
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p 
ON  p.product_key = s.product_key
GROUP BY p.product_name)t
WHERE rank_product <= 5

-- Which are the 5 worst_performing product in term of sales
SELECT TOP  5 
p.product_name,
SUM(sales_amount) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p 
ON  p.product_key = s.product_key
GROUP BY p.product_name
ORDER BY total_revenue ;

-- Which 5 subcategories generate the highest revenue 
SELECT TOP  5
p.subcategory,
SUM(sales_amount) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p 
ON  p.product_key = s.product_key
GROUP BY p.subcategory
ORDER BY total_revenue DESC

-- Which are the 5 worst_performing subcategories in term of sales
SELECT TOP  5 
p.subcategory,
SUM(sales_amount) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p 
ON  p.product_key = s.product_key
GROUP BY p.subcategory  
ORDER BY total_revenue;

-- Find the top 10 customers who have generate the highest revenue 
SELECT TOP  10
c.customer_key,
c.first_name,
c.last_name,
SUM(sales_amount) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c 
ON  c.customer_key = s.customer_key
GROUP BY c.customer_key, c.first_name, c.last_name
ORDER BY total_revenue DESC;

-- The 3 customer with the fewest orders placed 
SELECT TOP  3
c.customer_key,
c.first_name,
c.last_name,
COUNT(DISTINCT order_number) total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c 
ON  c.customer_key = s.customer_key
GROUP BY c.customer_key, c.first_name, c.last_name
ORDER BY total_revenue ;

