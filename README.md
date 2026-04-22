# Asces Sound — Musical Instrument Sales Analytics

A complete end-to-end data analytics project covering sales performance of musical instruments and audio equipment across multiple countries and customer segments (2022–2023).


## Project Overview

This project analyzes product sales data for **Asces Sound**, a company selling audio equipment such as headphones, USB audio interfaces, microphones, and studio gear. The goal was to uncover revenue trends, profitability by customer type, geographic performance, and discount impact.


## Tools & Technologies

| Stage | Tool |
|-------|------|
| Data Cleaning | Microsoft Excel |
| Data Analysis | Microsoft SQL Server (MS SQL) |
| Dashboard & Visualization | Microsoft Power BI |


## Project Workflow

### 1. Data Cleaning — Excel
- Removed duplicate and null records
- Standardized column formats (dates, currency, country names)
- Handled missing values and outliers
- Prepared clean dataset for SQL import

### 2.Data Analysis — MS SQL
- Wrote SQL queries to explore revenue, profit, and sales trends
- Segmented data by year, customer type, and country
- Aggregated metrics for use in Power BI visuals

### 3. Dashboard — Power BI
Built an interactive dashboard featuring:
- **Revenue by Date & Year** — monthly bar chart comparing 2022 vs 2023
- **Top Countries by Revenue** — Canada, USA, France, Mexico, Germany
- **Table Breakdown** — revenue and profit by customer type (Creator, Education, Enterprise, Government, Small Business)
- **Discount Band Breakdown** — donut chart showing revenue distribution across discount tiers
- **Product Navigation** — filter view by specific product category



## Dashboard Preview

![Sales Dashboard](Screenshot__26_.png)

# SQL Queries:

```sql
SELECT * FROM discount_data;
SELECT * FROM Product_data;
SELECT * FROM product_sales;

SELECT * ,
(Sale_Price*Units_Sold) AS Revenue,
(Cost_Price*Units_Sold) AS Total_cost,
FORMAT(date,'MMMM') AS Month,
FORMAT(date,'yyyy') AS Year
FROM Product_data a
JOIN product_sales b
ON a.Product_ID = b.Product;

WITH cte AS(
SELECT
a.Product,
a.Category,
a.Brand,
a.Description,
a.Sale_Price,
a.Cost_Price,
a.Image_url,
b.Date,
b.Customer_Type,
b.Discount_Band,
Units_Sold,
(Sale_Price*Units_Sold) AS Revenue,
(Cost_Price*Units_Sold) AS Total_cost,
FORMAT(date,'MMMM') AS Month,
FORMAT(date,'yyyy') AS Year
FROM Product_data a
JOIN product_sales b
ON a.Product_ID = b.Product)

SELECT *,
(1-discount*1.0/100)* Revenue AS discount_revenue
FROM cte a
JOIN discount_data b
ON a.Discount_Band=b.Discount_Band AND a.Month =b.Month;
```

## Key Insights

- **2023 revenue outperformed 2022** across most months, with a strong peak mid-year
- **Government** customers generated the highest revenue (~$6.28M in 2022)
- **Canada** led all countries in total revenue at $6.13M
- **Small Business** segment had zero minimum profit loss, indicating stable margins
- Discount bands show most revenue falls in the **$1.02M–$1.03M** range


