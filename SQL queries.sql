-- E-Commerce Sales Analytics (Apna College style)

CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE sales (
  order_id VARCHAR(10) PRIMARY KEY,
  customer_id VARCHAR(10),
  product VARCHAR(100),
  category VARCHAR(50),
  quantity INT,
  price DECIMAL(10,2),
  order_date DATE,
  month VARCHAR(20),       
  region VARCHAR(50),
  revenue DECIMAL(12,2),
  recency INT
);

-- 1) View data
SELECT * FROM sales LIMIT 10;

-- 2) Total orders
SELECT COUNT(order_id) AS total_orders FROM sales;

-- 3) Unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales;

-- 4) Top 5 products by revenue
SELECT product, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

-- 5) Sales by category
SELECT category, SUM(revenue) AS category_revenue
FROM sales
GROUP BY category
ORDER BY category_revenue DESC;

-- 6) Monthly sales trend
SELECT MONTH(order_date) AS month_no, SUM(revenue) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month_no;

-- 7) Regional sales distribution
SELECT region, SUM(revenue) AS region_sales
FROM sales
GROUP BY region
ORDER BY region_sales DESC;

-- 8) Average Order Value (AOV)
SELECT ROUND(AVG(revenue),2) AS avg_order_value
FROM sales;

-- 9) High value customers (> 1000)
SELECT customer_id, SUM(revenue) AS total_spent
FROM sales
GROUP BY customer_id
HAVING total_spent > 1000
ORDER BY total_spent DESC;

-- 10) Revenue overview
SELECT SUM(revenue) AS total_revenue,
       MIN(revenue) AS min_revenue,
       MAX(revenue) AS max_revenue,
       ROUND(AVG(revenue),2) AS avg_revenue
FROM sales;
