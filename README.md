📊 E-Commerce Sales Analytics Project (SQL)

🔹 Project Overview
This project analyzes an **E-Commerce sales dataset (200 records)** using **MySQL**.  
The goal was to extract **business insights** about revenue, customers, and sales trends.  

I followed an end-to-end workflow:
1. Imported raw data into MySQL.
2. Cleaned and structured data (handled dates, data types).
3. Wrote SQL queries (Apna College style) to answer business questions.
4. Compiled a professional report (PDF).
5. Built dashboards in Excel & Tableau for visualization.


🔹 Dataset
- Rows: 200  
- Columns: `order_id, customer_id, product, category, quantity, price, order_date, month, region, revenue, recency`  
- Date Format: `DD-MM-YYYY`  


🔹 Tools Used
- MySQL → database & analysis  
- Excel / Tableau** → dashboard visualization  
- GitHub → portfolio showcase  


🔹 Key SQL Queries & Insights
1. Total Orders & Customers
sql
SELECT COUNT(order_id) AS total_orders FROM sales;
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales;

📌 Result: 200 orders placed by 46 unique customers.*

---

2. Top 5 Products by Revenue
sql
SELECT product, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

📌 Top products accounted for ~40% of total revenue.



3. Monthly Sales Trend
sql
SELECT MONTH(order_date) AS month_no, SUM(revenue) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month_no;

📌 Sales peaked in March and July, showing seasonal demand.


4. Regional Sales
sql
SELECT region, SUM(revenue) AS region_sales
FROM sales
GROUP BY region
ORDER BY region_sales DESC;

📌 South and West regions dominated sales contributions.


5. High Value Customers
sql
SELECT customer_id, SUM(revenue) AS total_spent
FROM sales
GROUP BY customer_id
HAVING total_spent > 1000
ORDER BY total_spent DESC;

📌 Identified 15 high-value customers (ideal for loyalty programs).


🔹 Deliverables
- 📄 ecommerce_sql_project.pdf – problem statements, queries & insights  
- 💾 insert_sales.sql – load dataset into MySQL  
- 📜 queries.sql – full list of queries  
- 📊 Tableau & Excel dashboard screenshots  

---

🔹 Insights Summary
- Top products & categories drive the majority of revenue.  
- Seasonal patterns exist (spikes in March & July).  
- South & West regions are the strongest sales contributors.  
- High-value customers segment identified for retention strategies.  
- Recency segmentation shows customer churn & re-engagement opportunities.  

---

🔹 How to Run
1. Import dataset with 'insert_sales.sql'
2. Run queries from 'queries.sql'  
3. Review insights in the PDF or build your own dashboard  

---

✨ This project demonstrates end-to-end data analysis with SQL from raw data to business insights & reporting.
