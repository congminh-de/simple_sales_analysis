select distinct product from silver_adidas_sales;


--1-------------------
SELECT 
    COUNT(*) AS total_records,
    COUNT(DISTINCT date_key) AS distinct_dates,
    COUNT(DISTINCT retailer_key) AS retailers,
    COUNT(DISTINCT location_key) AS cities,
    MIN(date_key) AS min_date,
    MAX(date_key) AS max_date,
    SUM(units_sold) AS total_units,
    SUM(total_sales) AS total_revenue
FROM gold_adidas_sales;

--- TIME TREND ---
-----------------------
SELECT 
	d.month,
	d.quarter,
	d.year,
	SUM(g.units_sold) AS total_sold,
	SUM(g.total_sales) AS total_sales,
	SUM(g.operating_profit) AS operating_profit
FROM gold_adidas_sales g LEFT JOIN dim_date d
	ON g.date_key = d.date_key
GROUP BY d.quarter, d.year, d.month
ORDER BY d.year, d.quarter, d.month;
---- the revenue reaches peak in april and in the autumn( july, august ) annually

--------------------------
SELECT 
	d.year,
	d.day_of_week,
	d.day_name,
	SUM(units_sold) AS total_sold,
	SUM(g.total_sales) AS total_sales,
	SUM(g.operating_profit) AS operating_profit
FROM gold_adidas_sales g LEFT JOIN dim_date d
	ON g.date_key = d.date_key
GROUP BY 1,2,3
ORDER BY 1,2;

--- SALES METHODS ---
SELECT 
	d.year,
	g.sales_method,
	AVG(g.price_per_unit) AS avg_price,
	SUM(g.units_sold) AS total_sold,
	SUM(g.total_sales) AS total_sales,
	SUM(g.operating_profit) AS operating_profit
FROM gold_adidas_sales g LEFT JOIN dim_date d
	ON g.date_key = d.date_key
--WHERE d.year = 2021
GROUP BY 1,2
ORDER BY 1;
---- 2020: outlet same in-store = 40%, online 20%. 2021: online 43%, outlet 29%, in-store 28%

--- PRODUCT ---
SELECT 
	d.year,
	p.product_name,
	AVG(g.price_per_unit) AS avg_price,
	SUM(g.units_sold) AS total_sold,
	SUM(g.total_sales) AS total_sales,
	SUM(g.operating_profit) AS operating_profit
FROM gold_adidas_sales g 
	LEFT JOIN dim_date d
		ON g.date_key = d.date_key
	LEFT JOIN dim_product p
		ON p.product_key = g.product_key
GROUP BY 1,2
ORDER BY 1,5;
	
--- LOCATION ---
WITH A AS (
SELECT 
    l.region,
    l.state,
    l.city,
    SUM(f.total_sales) AS total_revenue,
    SUM(f.operating_profit) AS total_profit,
    ROUND((SUM(f.operating_profit) / SUM(f.total_sales)) * 100, 2) AS profit_margin,
    SUM(CASE WHEN EXTRACT(YEAR FROM f.date_key) = 2020 THEN f.total_sales ELSE 0 END) AS sales_2020,
    SUM(CASE WHEN EXTRACT(YEAR FROM f.date_key) = 2021 THEN f.total_sales ELSE 0 END) AS sales_2021,
    COALESCE(ROUND(
        ((SUM(CASE WHEN EXTRACT(YEAR FROM f.date_key) = 2021 THEN f.total_sales ELSE 0 END) - 
          SUM(CASE WHEN EXTRACT(YEAR FROM f.date_key) = 2020 THEN f.total_sales ELSE 0 END)) / 
          NULLIF(SUM(CASE WHEN EXTRACT(YEAR FROM f.date_key) = 2020 THEN f.total_sales ELSE 0 END), 0)) * 100
    , 2), 0) AS growth_rate
FROM gold_adidas_sales f
JOIN dim_location l ON f.location_key = l.location_key
GROUP BY 1, 2, 3
ORDER BY total_revenue DESC
)
SELECT 
	*
FROM A 
WHERE growth_rate != 0;











	