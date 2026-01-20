CREATE DATABASE retail_db;
USE retail_db;
CREATE TABLE retail_sales (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    region VARCHAR(20),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    quantity INT
);
SELECT * FROM retail_sales;
SELECT COUNT(*) FROM retail_sales;
SELECT * FROM retail_sales
WHERE category = 'Technology';
SELECT * FROM retail_sales
ORDER BY sales DESC
LIMIT 5;
SELECT category, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category;
SELECT region, AVG(profit) AS avg_profit
FROM retail_sales
GROUP BY region;
SELECT category, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category
HAVING SUM(sales) > 2000;
SELECT * FROM retail_sales
WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';
SELECT * FROM retail_sales
WHERE customer_name LIKE '%Amit%';
SELECT category, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY category;



