CREATE TABLE sales_data (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(100),
    product_name VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(100),
    region VARCHAR(50),
    quantity INT,
    sales DECIMAL(12,2),
    discount DECIMAL(5,2),
    profit DECIMAL(12,2),
    payment_mode VARCHAR(50),
    shipping_mode VARCHAR(50)
);
USE sales_data;

SELECT COUNT(*) AS total_rows
FROM sales_data;

DESCRIBE sales_data;



DROP TABLE IF EXISTS sales_data;

SHOW TABLES;

SELECT COUNT(*) AS total_rows

DESCRIBE `sales_data_cleaned.csv`;

SELECT *
FROM `sales_data_cleaned.csv`
LIMIT 10;
FROM `sales_data_cleaned.csv`;

-- Query 1: Total Sales

SELECT SUM(Sales) AS Total_Sales
FROM `sales_data_cleaned.csv`;

-- Query 2: Total Profit

SELECT SUM(Profit) AS Total_Profit
FROM `sales_data_cleaned.csv`;

-- Query 3: Total Quantity

SELECT SUM(Quantity) AS Total_Quantity
FROM `sales_data_cleaned.csv`;

-- Query 4: Number of Orders

SELECT COUNT(*) AS Number_of_Orders
FROM `sales_data_cleaned.csv`;

-- Query 5 — Profit by Category

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM `sales_data_cleaned.csv`
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Query 6 — Sales by Region

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM `sales_data_cleaned.csv`
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 7 — Monthly Sales

SELECT Year,
       Month,
       SUM(Sales) AS Total_Sales
FROM `sales_data_cleaned.csv`
GROUP BY Year, Month
ORDER BY Year, Month;