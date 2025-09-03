📊 E-Commerce Sales Analytics (SQL + Excel + Tableau)

🔹 Project Overview
This project showcases **end-to-end data analysis** on an E-Commerce sales dataset using MySQL, Excel, and Tableau.  

The workflow covers:
1. Data Import → Load dataset into MySQL  
2. SQL Queries → Clean & analyze sales patterns  
3. Excel & Tableau Dashboards → Visualize insights for business decisions  

---

🔹 Dataset
- 📂 File: `ecommerce_dataset.csv` (200 records)  
- 🧾 Columns:  
  - `order_id, customer_id, product, category, quantity, price, order_date, month, region, revenue, recency`  

---

🔹 Tools & Technologies
- MySQL → querying & analysis  
- Excel → pivot tables & charts  
- Tableau → interactive dashboard  
- GitHub → portfolio showcase  

---

🔹 SQL Analysis
Queries written in Apna College style (simple + readable).  

📂 File: `SQL queries.sql`  

Example queries:  

```sql
-- Total Orders
SELECT COUNT(order_id) AS total_orders FROM sales;

-- Unique Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales;

-- Top 5 Products by Revenue
SELECT product, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month_no, SUM(revenue) AS monthly_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month_no;
```

---

🔹 Dashboard (Tableau + Excel)

📈 Tableau Dashboard  
![Dashboard](Dashboard%201%20(2).png)

Highlights:
- Top contributing products & customers  
- Revenue by region (map view)  
- Monthly sales trend  
- KPIs: Total revenue, orders, AOV, customers  

📊 Excel Analysis
📂 File: `Ecommerce_Sales_Portfolio EXCEL.xlsx`  
Contains pivot tables & charts for:
- Monthly revenue  
- Category-wise contribution  
- Customer segmentation  

---

🔹 Deliverables
- `insert_sales.sql` → Insert dataset into MySQL  
- `SQL queries.sql` → All analysis queries  
- `ecommerce_dataset.csv` → Original dataset  
- `Ecommerce_Sales_Portfolio EXCEL.xlsx` → Excel analysis  
- `Dashboard 1 (2).png` → Tableau dashboard screenshot  

---

🔹 Key Insights
- Cameras, Printers, and Smartphones are top revenue drivers  
- South & West regions generate the most sales  
- Sales peak in March, April, and June (seasonality effect)  
- Identified high-value customers (spending > ₹1000) for loyalty focus  
- Average order value (AOV) is around ₹1,100  

---

## 🔹 How to Run
1. Import `insert_sales.sql` into MySQL  
2. Run queries from `SQL queries.sql`  
3. Open `Ecommerce_Sales_Portfolio EXCEL.xlsx` for Excel insights  
4. Open Tableau workbook or view dashboard screenshot  

---

✨ This project demonstrates the complete analytics pipeline: SQL + Excel + Tableau → Actionable Insights.  
