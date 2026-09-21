-- Calculate the total sales per month
-- and running total of sales over time
SELECT 
order_date,
SUM(total_sales) OVER (ORDER BY order_date ) running_total_sales 
FROM
(
SELECT 
	DATETRUNC(YEAR,order_date) AS order_date,
	SUM(sales_amount) AS total_sales
FROM gold.fact_sales
	WHERE order_date IS NOT NULL
	GROUP BY DATETRUNC(YEAR,order_date))t