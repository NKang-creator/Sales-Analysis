# Sales-Analysis
Project Overview

This project demonstrates an end-to-end sales analytics workflow, covering the complete data lifecycle — from raw data generation and cleaning to analysis, visualization, and business insights.

The goal of the project is to analyze sales performance, customer behavior, discount impact, and regional trends to support data-driven business decision-making.

🔹 Business Problem Statement

The business wants to understand:

How sales performance changes over time

Which product categories and products drive the most revenue

How discounts impact revenue and order value

Who the most valuable and repeat customers are

Which cities generate the highest sales

Whether revenue is concentrated among a small group of customers

🔹 Dataset Description

Source: Synthetic dataset generated using Python to simulate real-world sales transactions

Size: ~1,000 rows

Time Period: Jan 2024 – Jun 2024

Key Columns:

Order_ID

Order_Date

Customer_ID, Customer_Name, Customer_Segment

City, Country

Product_Category, Product_Name

Quantity, Unit_Price, Discount

Order_Status, Payment_Method

Gross_Sales, Discount_Amount, Net_Sales

⚠️ Note: The dataset is synthetic but designed to closely resemble real-world e-commerce sales data.

🔹 Tools & Technologies Used
Tool	Purpose
Excel	Data exploration, calculated columns, pivot tables, dashboard
MySQL	Data storage, querying, aggregation, customer analysis
Python (Pandas)	Data generation, cleaning, feature engineering, EDA
Power BI	Interactive dashboard, DAX measures, business reporting
🔹 Project Workflow
1️⃣ Data Generation & Preparation (Python)

Generated realistic transactional sales data using Python

Performed feature engineering:

Gross Sales

Discount Amount

Net Sales

Time-based features (Month, Year)

Conducted exploratory data analysis (EDA)

2️⃣ Excel Analysis & Dashboard

Created calculated columns for sales metrics

Built pivot tables for:

Monthly revenue

Product category performance

Top customers

City-wise revenue

Order status analysis

Designed an interactive Excel dashboard using slicers and pivot charts

3️⃣ SQL Analysis (MySQL)

Designed relational table schema

Imported cleaned sales data into MySQL

Wrote analytical SQL queries to analyze:

Monthly sales trends

Product category revenue

Top customers by revenue and order count

Repeat vs one-time customers

Discount impact

City-wise performance

Performed Pareto (80/20) analysis using window functions

4️⃣ Power BI Dashboard

Connected Power BI directly to MySQL database

Created DAX measures:

Total Revenue

Total Orders

Total Customers

Average Order Value (AOV)

Built a 2-page interactive dashboard:

Sales Overview

Customer & Regional Insights

Implemented:

Top-N filters

Conditional formatting

Interactive slicers

🔹 Key Insights

Sales peak in January and April, indicating seasonality

Furniture contributes the highest overall revenue, while Electronics contains the top revenue-generating product

Higher discounts generally reduce average order value, except moderate discounts (~10%) for Electronics

A small group of customers contributes a disproportionate share of revenue (Pareto effect)

Nagpur and Mumbai are the top-performing cities by revenue

Repeat customers generate significantly higher lifetime value

🔹 Business Recommendations

Apply selective, category-specific discounting instead of blanket discounts

Prioritize high-value and repeat customers through loyalty programs

Focus marketing and inventory planning on top-performing cities

Reduce dependency on a small customer group by improving customer retention

How to Run This Project

Clone the repository

Open Excel file for pivot analysis

Import CSV into MySQL

Run SQL queries from sales_analysis.sql

Connect Power BI to MySQL and refresh data

🔹 Skills Demonstrated

Data cleaning & feature engineering

SQL aggregations and window functions

Business-oriented data analysis

Dashboard design & storytelling

End-to-end analytics workflow
