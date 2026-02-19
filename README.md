# 📚 Book Sales Analytics Dashboard (SQL + Power BI)
## 🔍 Project Overview

This project demonstrates an end-to-end BI workflow using CSV → PostgreSQL (SQL) → Power BI.
It focuses on data modeling, SQL-based analysis, KPI creation, and interactive dashboards for book sales analytics.

⚠️ This project uses dummy data for learning and portfolio purposes.


### 🧱 Tech Stack

- Database: PostgreSQL

- Visualization: Power BI

- Languages: SQL, DAX

- Data Source: CSV (Books, Customers, Orders)

## 📂 Project Structure

```text
sql/
 ├── 01_schema.sql             # Database & table creation
 ├── 02_basic_analysis.sql     # Basic SQL queries
 ├── 03_advanced_analysis.sql  # Joins, aggregations, analysis
 ├── 04_fact_views.sql         # Main fact table & monthly sales views
 └── 05_kpi_views.sql          # KPI views & combined KPI view

data/
 ├── Books.csv
 ├── Customers.csv
 └── Orders.csv

powerbi/
 └── Dashboard_SQL_PowerBI.pbix

screenshots/
 └── dashboard_pages.png

README.md
```

### 🧠 SQL Work (Basic → Advanced)

- Basic SQL : Filtering, sorting, aggregates, subqueries

- Advanced SQL : Joins, group by/having, revenue & quantity analysis

- **Views Created:**

- Main fact table (Book_store)

- Monthly sales view

- KPI views (core KPIs, most/least expensive book, top years)

- Combined KPI view (all_kpi) for BI consumption

### 📊 Power BI Dashboard

- Connected Power BI directly to the SQL database

- Created a Date Table and built relationships

- Built DAX measures for dynamic KPIs (Revenue, Quantity, MoM Growth)

- Designed interactive dashboards with slicers (Year/Month)

#### ⚖️ KPI Design: SQL vs Power BI

- SQL KPIs: Static KPIs created using SQL views (no date table in SQL layer)

- Power BI KPIs: Dynamic KPIs using DAX and Date table for time intelligence

- Purpose: Showcase backend KPI logic (SQL) vs frontend semantic modeling (Power BI)

### 📌 Insights & Analysis Covered

- Month-over-Month (MoM) growth trends

- Revenue & Quantity by Genre, City, Country

- Performance by Book and Author

- Customer-level analysis

- Geographic representation to identify main customer base and potential marketing regions

- Time-based filtering for drill-down analysis

### 🧪 Learning Outcomes

- Excel is suitable for small datasets but not ideal for large, database-driven BI workflows.

- Power BI supports direct SQL database connections, data modeling, and large-scale analytics.

- SQL is essential for scalable data preparation and complex analysis.

- Together, SQL + Power BI form a professional BI workflow used in real-world projects.

### 🚀 Key Skills Demonstrated

SQL • Data Modeling • KPI Design • DAX Measures • BI Dashboards • End-to-End Analytics Pipeline

## 🔗 Connect with me
If you have feedback or suggestions, feel free to reach out or connect:

- 🌐 LinkedIn: https://www.linkedin.com/in/mohdarham786/
- 📬 GitHub: https://github.com/Arham0731

