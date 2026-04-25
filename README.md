# 📊 Adidas US Sales Analysis Dashboard

> **A simple end-to-end data analysis project examining sales performance for Adidas in the US market.**

## 🔗 Live Demo
Explore the interactive dashboard here:
### 👉 [Download adidas_sales_report.pbix](https://github.com/congminh-de/simple_sales_analysis/blob/main/adidas_sales_report.pbix)
---

## 💼 Business Context
This dashboard was built to assess business performance across 2020 and 2021 for a U.S. retail company selling Apparel and Footwear through multiple channels and retail partners. 2020 served as a disrupted baseline — limited transaction volume, compressed revenue — while 2021 represented a full recovery and aggressive expansion year. The goal was to cut through the raw numbers and answer one core question: did the business actually improve, or did it just get bigger? The dashboard tracks revenue, profitability, channel behavior, and geographic spread in a single operational view — built for anyone who needs to understand the business quickly, without needing to dig through raw data.

## 🛠️ Tech Stack & Workflow
* **Database:** PostgreSQL (Data Storage & Transformation)
* **Visualization:** Power BI (Data Modeling & Dashboarding)
* **Language:** SQL (for ETL), DAX (for dynamic measures)

## 🧹 Data Cleaning & Modeling Strategy
To ensure performance and accuracy, I focused on a clean architecture:

1.  **Data Transformation (SQL)
2.  **Data Modeling (Star Schema):** * Built a Star Schema in Power BI connecting the Fact table (`Fact_Sales`) with Dimension tables (`Dim_Date`, `Dim_Product`, `Dim_Location`, `Dim_Retailer`)

---

## 📸 Dashboard Screenshots

### Growth
![Dashboard Overview](Screenshot%202026-04-25%20213143.png)

---
### Key findings
* Revenue grew +396% YoY — from $24.2M (2020) to $95.9M (2021), driven by volume not price
* Online channel surged from ~19% to ~42% share — the single biggest structural shift in the data
* AOV declined -7.5% YoY — largely explained by the Online channel mix shift, not actual price erosion
* Operating margin held stable at ~3.93% — thin and volume-dependent, limited efficiency improvement
* Top 3 retailers (West Gear, Foot Locker, Sports Direct) dominate revenue — concentration risk
* Men's Street Footwear is the #1 product by a significant margin; Apparel categories remain underdeveloped
* California and New York lead all states; most regional growth is a 2021 phenomenon

### This project is an valueable exercise and helps me learn more about Data Analytics skils although it is quite simple for a real project.
