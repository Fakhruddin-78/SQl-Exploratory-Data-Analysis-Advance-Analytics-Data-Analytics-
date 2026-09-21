-- Analyze the yearly performance of products by comparing each product's sales
-- to both its average sales performance and the previous year's sales.
WITH yearly_products_sales AS (
SELECT
	YEAR(f.order_date) order_year,
	p.product_name,
	SUM(f.sales_amount) current_sales
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p 
	ON f.product_key = p.product_key
WHERE order_date IS NOT NULL
GROUP BY 
	YEAR(f.order_date), 
	p.product_name 
	)
	
SELECT 
order_year,
product_name,
AVG(current_sales) OVER(PARTITION BY product_name) AS average_sales,
current_sales - AVG(current_sales) OVER(PARTITION BY product_name) difference_from_average,
CASE 
	WHEN current_sales - AVG(current_sales) OVER(PARTITION BY product_name) > 0 THEN 'Above Avg'
	WHEN current_sales - AVG(current_sales) OVER(PARTITION BY product_name) < 0 THEN 'Below Avg'
	ELSE 'Avg'
END AS avg_change,
current_sales,
LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year) AS previous_year_sales,
current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year) AS difference_from_previous_year,
CASE 
	WHEN current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year)  > 0 THEN 'Increase'
	WHEN current_sales - LAG(current_sales) OVER(PARTITION BY product_name ORDER BY order_year)  < 0 THEN 'Decrease'
	ELSE 'No Change'
END AS py_change
FROM yearly_products_sales
ORDER BY product_name,order_year