/*
===============================================================================
Customer Repot
===============================================================================
Purpose: 
- This report consolidates key customer metrics and behaviors

Highlights:
1.Gather essential fields such as name, age , and transaction details.
2.Segment customers into categories (VIP, Regular, New) and age groups
3.Aggregate customer level matrics:
  - total orders
  - total sales
  - total qauntity purchased 
  - lifespan in months
4. Calculate valuble KPIs:
    - recency (months since last orders)
    - average order value 
    - average monthly spend
===============================================================================
*/
WITH base_query AS (
/*---------------------------------------------------------------------------
1) Base Query: Retrieves core columns from tables
---------------------------------------------------------------------------*/
SELECT 
    f.order_number,
    f.product_key,
    f.order_date,
    f.sales_amount,
    f.quantity,
    c.customer_key,
    c.customer_number,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    DATEDIFF(YEAR,c.birthdate,GETDATE()) age
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
WHERE order_date IS NOT NULL 
)

 ,customer_aggregation AS (
 /*---------------------------------------------------------------------------
2) Customer Aggregations: Summarizes key metrics at the customer level
---------------------------------------------------------------------------*/
SELECT 
    customer_key,
    customer_number,
    customer_name,
    age,
    COUNT(DISTINCT order_number) total_order,
    SUM(sales_amount) total_sales,
    SUM(quantity) total_quantity,
    COUNT(DISTINCT product_key) total_products,
    MAX(order_date) last_order_date,
    DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) lifespan
FROM base_query
GROUP BY
    customer_key,
    customer_number,
    customer_name,
    age
    )
SELECT
    customer_key,
    customer_number,
    customer_name,
    age,
    CASE 
        WHEN age < 20 THEN 'under 20'
        WHEN age BETWEEN 20 AND 29 THEN '21-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50 and above'
    END AS  age_group,
        CASE 
            WHEN lifespan >= 12 AND total_sales > 5000 THEN 'VIP'
            WHEN lifespan >= 12 AND total_sales <= 5000 THEN 'Regular'
            ELSE 'New'
        END AS customer_segment,
    last_order_date,
    DATEDIFF(MONTH,last_order_date, GETDATE()) rececy,
    total_order,
    total_sales,
    total_quantity,
    total_products,
    last_order_date,
    lifespan,
    -- Compute Average order value 
    CASE WHEN total_order = 0 THEN '0'
         ELSE total_sales / total_order
     END avg_order_value,
    -- Compute Average monthly spend
    CASE WHEN lifespan = 0 THEN '0'
         ELSE total_sales / lifespan
    END avg_monthly_spend
FROM customer_aggregation