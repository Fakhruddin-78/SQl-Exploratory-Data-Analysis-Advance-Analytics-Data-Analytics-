# SQL Exploratory Data Analysis & Advanced Analytics Project

Welcome to the **SQL Exploratory Data Analysis & Advanced Analytics** repository! 🚀  
This project demonstrates an end-to-end analytics solution leveraging advanced SQL techniques on a curated **Gold Layer** database. Designed as a portfolio project, it showcases industry best practices in data profiling, cohort analysis, customer segmentation, and query performance tuning.

---
## 🏗️ Data Architecture & Gold Layer Focus

The data architecture for this project operates on the Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:
![Data Architecture](docs/data_architecture.png)

1. **Bronze Layer**: Stores raw source data ingested from enterprise systems into the SQL Server Database.
2. **Silver Layer**: Cleanses, standardizes, and normalizes transactional records to ensure high data quality.
3. **Gold Layer** *(Focus of this Project)*: Houses business-ready star schema models (`fact_sales`, `dim_customers`, `dim_products`) optimized specifically for exploratory data analysis (EDA) and advanced analytical queries.

---
## 📖 Project Overview

This project involves:

1. **Exploratory Data Analysis (EDA)**: Profiling distributions, missing value audits, anomaly detection, and percentile metric calculations directly within SQL Server.
2. **Customer Cohort & Retention Analysis**: Building multi-stage CTEs and window functions to measure monthly cohort retention and lifecycle behavior.
3. **RFM Segmentation**: Scoring customer Recency, Frequency, and Monetary value using `NTILE()` functions to identify key customer tiers.
4. **Performance Optimization**: Analyzing query execution plans, refactoring expensive joins, and designing targeted indexing strategies.

🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:
- SQL Analytics & Query Optimization
- Advanced Window Functions & CTEs
- Exploratory Data Analysis (EDA)
- Customer Analytics & Cohort Modeling
- Business Intelligence Reporting
- VS Code & Database Management

---

## 🛠️ Important Links & Tools:

Everything is for Free!
- **[Datasets](datasets/):** Access to the Gold Layer project dataset (CSV & SQL DDL files).
- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads):** Lightweight database engine for executing analytics scripts locally.
- **[Visual Studio Code](https://code.visualstudio.com/):** Lightweight IDE configured with SQL extensions for running and testing scripts.
- **[mssql Extension for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql):** Official extension to connect and query databases inside VS Code.
- **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms):** GUI alternative for managing database instances and viewing execution plans.
- **[Git Repository](https://github.com/):** Manage, version, and share your analytical SQL codebase.
- **[DrawIO](https://www.drawio.com/):** Design ERD models, star schemas, and analytical data flows.

---

## 🚀 Project Requirements

### Building Advanced Analytics Queries (Data Analysis)

#### Objective
Develop high-performance SQL scripts operating on Gold Layer star schema models to uncover actionable business insights regarding customer behavior and revenue trends.

#### Specifications
- **Data Source**: Query business-ready dimensional models stored in SQL Server.
- **EDA & Profiling**: Conduct full statistical distributions, null audits, and outlier flags using percentile functions (`PERCENTILE_CONT`).
- **Advanced Segmentation**: Build RFM scores and cohort retention metrics using CTEs and windowing capabilities.
- **Optimization**: Analyze and refactor complex queries for maximum execution efficiency.
- **Documentation**: Provide clean, modular scripts with detailed inline comments explaining the analytical logic.

---

### BI: Analytics & Reporting (Data Insights)

#### Objective
Deliver comprehensive SQL-driven reports providing deep visibility into:
- **Customer Lifetime Value & Retention Curves**
- **Product Performance & Basket Analysis**
- **Sales Trends & Month-over-Month (MoM) Growth**

These insights empower key stakeholders with metrics required for data-driven decision-making.  
## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

## 🌟 About Me

# Hi there, I'm Fakhruddin Hatod 👋

🎓 **B.Tech Data Science Student** at *Sushila Devi Bansal College of Engineering*  
💡 Passionate about turning complex data into actionable insights and building scalable data solutions.

---

### 💻 About Me
- 🔭 **Current Focus:** Advanced Machine Learning algorithms, predictive modeling, and SQL Analytics.
- 🛠️ **Core Skills:** Python, SQL, Data Analysis, Machine Learning, Data Visualization.
- 📚 **Currently Learning:** Deep Learning, Model Deployment, and Big Data Technologies.
- 🎯 **Goal:** Building impactful AI/Data Science projects and preparing for industry roles.

---

### 🛠️ Tech Stack & Tools

- **Languages:** SQL, Python
- **Databases:** SQL Server / PostgreSQL
- **Data Science & ML:** Pandas, NumPy, Scikit-Learn, Matplotlib, Seaborn
- **Tools & Platforms:** VS Code, SSMS, Git, GitHub, Draw.io

---

### 📬 Let's Connect!
- **Email:** fakhruddinhatod@gmail.com
