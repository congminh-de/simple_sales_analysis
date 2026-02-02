# 📊 Adidas US Sales Analysis Dashboard

> **A simple end-to-end data analysis project examining sales performance, profit margins, and regional trends for Adidas in the US market.**

## 🔗 Live Demo
Explore the interactive dashboard here:
### 👉 adidas_sales_report.pbix
*(Note: Requires Power BI Desktop to open)*
---

## 💼 Business Context
The goal of this project is to provide a consolidated view of Adidas' sales performance in the US. Key stakeholders need to track growth metrics and identify efficiency gaps.
* **Objective:** Analyze revenue, profit, and volume trends to determine the most profitable retailers and products.

## 🛠️ Tech Stack & Workflow
* **Database:** PostgreSQL (Data Storage & Transformation)
* **Visualization:** Power BI (Data Modeling & Dashboarding)
* **Language:** SQL (for ETL), DAX (for dynamic measures)

## 🧹 Data Cleaning & Modeling Strategy
To ensure performance and accuracy, I focused on a clean architecture:

1.  **Data Transformation (SQL)
2.  **Data Modeling (Star Schema):** * Built a Star Schema in Power BI connecting the Fact table (`Fact_Sales`) with Dimension tables (`Dim_Date`, `Dim_Product`, `Dim_Location`)

---

## 📸 Dashboard Screenshots

### 1. Overview Page
*Executive summary of key metrics (Revenue, Profit, Margin) with MoM & YoY growth analysis.*
(<img width="1382" height="777" alt="image" src="https://github.com/user-attachments/assets/c6246dfe-9459-44b4-bcdc-7fd81c1da03c" />)


### 2. Product Detail & Navigation
*Deep dive into product categories using an app-like navigation experience.*
(<img width="1372" height="776" alt="image" src="https://github.com/user-attachments/assets/26395ec8-1faa-4389-94f2-86d87e7c284d" />)


### 3. Retailer & Margin Analysis
*Scatter plot analysis correlating Operating Margin vs. Average Selling Price across different retailers.*
(<img width="1375" height="778" alt="image" src="https://github.com/user-attachments/assets/5b86f254-9b6c-4be1-8274-1792e43f9647" />)

---
## This project is an valueable exercise and helps me learn more about Data Analytics skils although it is quite simple for a real project.
