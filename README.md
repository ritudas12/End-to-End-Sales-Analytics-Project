# Asces Sound — Musical Instrument Sales Analytics

A complete end-to-end data analytics project covering sales performance of musical instruments and audio equipment across multiple countries and customer segments (2022–2023).

---

## Project Overview

This project analyzes product sales data for **Asces Sound**, a company selling audio equipment such as headphones, USB audio interfaces, microphones, and studio gear. The goal was to uncover revenue trends, profitability by customer type, geographic performance, and discount impact.

---

## Tools & Technologies

| Stage | Tool |
|-------|------|
| Data Cleaning | Microsoft Excel |
| Data Analysis | Microsoft SQL Server (MS SQL) |
| Dashboard & Visualization | Microsoft Power BI |

---

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

---

## Dashboard Preview

![Sales Dashboard](Screenshot__26_.png)

---

## Repository Structure

```
📦 asces-sound-sales-analytics
 ┣ 📊 Product_sale_dashboard.pbix   # Power BI dashboard file
 ┣ 📸 Screenshot__26_.png           # Dashboard preview image
 ┗ 📄 README.md
```

---

## Key Insights

- **2023 revenue outperformed 2022** across most months, with a strong peak mid-year
- **Government** customers generated the highest revenue (~$6.28M in 2022)
- **Canada** led all countries in total revenue at $6.13M
- **Small Business** segment had zero minimum profit loss, indicating stable margins
- Discount bands show most revenue falls in the **$1.02M–$1.03M** range


