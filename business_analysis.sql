-- SQL Business Analysis Project
-- Sales Performance Analysis

-- 1. View all sales data
SELECT *
FROM sales_data;

-- 2. Calculate total revenue
SELECT
    SUM(sales) AS total_revenue
FROM sales_data;

-- 3. Sales by product
SELECT
    product,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC;

-- 4. Sales by country
SELECT
    country,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC;

-- 5. Best-selling products by quantity
SELECT
    product,
    SUM(quantity) AS units_sold
FROM sales_data
GROUP BY product
ORDER BY units_sold DESC;

-- 6. Sales by category
SELECT
    category,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- 7. Highest-value orders
SELECT
    order_id,
    customer_name,
    product,
    sales
FROM sales_data
ORDER BY sales DESC
LIMIT 5;

-- 8. Average order value
SELECT
    ROUND(AVG(sales), 2) AS average_order_value
FROM sales_data;

-- 9. Monthly sales trend
SELECT
    SUBSTR(order_date, 1, 7) AS month,
    SUM(sales) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- 10. Customer spending
SELECT
    customer_name,
    SUM(sales) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC;
