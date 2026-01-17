USE sales_analytics;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 5;

-- Overall Business KPIs
SELECT
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    SUM(Net_Sales) AS total_revenue,
    AVG(Net_Sales) AS avg_order_value
FROM sales;

-- Monthly Revenue Trend
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS month,
    SUM(Net_Sales) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Revenue by Product Category
SELECT
    Product_Category,
    SUM(Net_Sales) AS revenue
FROM sales
GROUP BY Product_Category
ORDER BY revenue DESC;

-- Top 5 Customers by Revenue
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Net_Sales) AS total_revenue
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY total_revenue DESC
LIMIT 5;

-- Discount Impact Analysis
SELECT
    Discount,
    COUNT(*) AS order_count,
    AVG(Net_Sales) AS avg_revenue
FROM sales
GROUP BY Discount
ORDER BY Discount;

-- Repeat Customers
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS order_count
FROM sales
GROUP BY Customer_ID
HAVING order_count > 1
ORDER BY order_count DESC;

-- City-Wise Revenue
SELECT
    City,
    SUM(Net_Sales) AS revenue
FROM sales
GROUP BY City
ORDER BY revenue DESC
LIMIT 10;

-- Classify Repeat vs One-Time Customers
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS order_count,
    CASE
        WHEN COUNT(DISTINCT Order_ID) > 1 THEN 'Repeat'
        ELSE 'One-Time'
    END AS customer_type
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY order_count DESC;

-- Average Order Value (AOV) per Customer
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS order_count,
    SUM(Net_Sales) AS total_revenue,
    ROUND(SUM(Net_Sales) / COUNT(DISTINCT Order_ID), 2) AS avg_order_value
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY avg_order_value DESC;

-- Revenue per Customer (Descending)
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Net_Sales) AS total_revenue
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY total_revenue DESC;



