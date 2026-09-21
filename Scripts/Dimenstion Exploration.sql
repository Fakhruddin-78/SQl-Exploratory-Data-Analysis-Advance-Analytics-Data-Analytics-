-- Dimenstion Exploration 
-- Explore All Countrier Our Customer Come From 
SELECT DISTINCT country FROM gold.dim_customers

-- Explore All Products categories & Subcategories "The Major Divisions" from gold.dim_products
	SELECT DISTINCT category,subcategory,product_name FROM gold.dim_products
	ORDER BY category,subcategory,product_name



























