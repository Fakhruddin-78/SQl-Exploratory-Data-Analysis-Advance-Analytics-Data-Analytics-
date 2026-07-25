Advanced SQL Analytics & Exploratory Data Analysis (EDA)
Welcome to the Advanced SQL Analytics & Exploratory Data Analysis repository! 🚀

This project demonstrates how to perform end-to-end data exploration, customer segmentation, cohort retention, and query performance optimization directly on a Gold Layer Star Schema in a SQL environment. Designed as a portfolio project, it highlights advanced analytics methodologies without relying on external scripting languages.

🏗️ Analytics Context & Data Layer
This repository focuses on querying and analyzing business-ready data housed in the Gold Layer of a Medallion Architecture:

Bronze & Silver Layers (Upstream): Raw ingestion and data cleansing/transformation.

Gold Layer (This Repository): Star Schema consisting of fully modeled fact tables (fact_sales) and dimension tables (dim_customers, dim_products). Optimized for analytical reporting, complex windowing, and business intelligence.

📖 Project Overview
This project delivers:

Exploratory Data Analysis (EDA): Comprehensive SQL scripts for data profiling, null auditing, value distribution binning, and outlier detection.

Cohort & Retention Analysis: Tracking customer lifecycle behavior over time using CTEs, DATE_TRUNC, and window functions.

RFM Segmentation: Grouping users by Recency, Frequency, and Monetary value using NTILE() functions to identify VIPs and churn risks.

Performance Optimization: Leveraging execution plan analysis, indexing strategies, CTE restructuring, and windowing optimizations.

🎯 This repository is a resource for professionals and hiring managers looking to evaluate expertise in:

Advanced SQL Analytics

Exploratory Data Analysis (EDA)

Window Functions & CTEs

Customer Analytics (RFM, Retention)

Query Performance Optimization

Data Modeling & Star Schema Utilization

🛠️ Important Links & Tools
Everything is open-source and ready to run:

SQL Scripts: Access all modular EDA and analytical queries.

SQL Server Management Studio (SSMS): Integrated environment used for database management and query execution.

DrawIO: Entity-Relationship Diagrams (ERD) and Star Schema visualization.

Notion Project Breakdown: Phase-by-phase query design, logic documentation, and performance benchmarks.

🚀 Project Requirements & Analytical Scope
1. Exploratory Data Analysis (EDA)
Audit data completeness, zero/null records, and duplicate integrity across fact and dimension tables.

Compute summary statistics (mean, median, interquartile range using PERCENTILE_CONT).

Create histogram bins using mathematical division (FLOOR) to understand transaction spread.

2. Advanced Analytics & Segmentation
Cohort Retention: Build multi-stage CTEs to track customer retention curves from initial purchase month.

RFM Analysis: Apply NTILE(4) ranking across customer recency, purchase frequency, and lifetime spend.

Sales Trend Analysis: Calculate rolling averages, moving sums, and month-over-month (MoM) growth rates using LAG() and LEAD().

3. Query Performance Tuning
Rewrite correlated subqueries into JOINs and CTEs.

Identify bottleneck operations via SQL execution plans and implement appropriate non-clustered indexes.

📂 Repository Structure
sql-eda-advanced-analytics/
│
├── docs/                               # Architecture and analytics documentation
│   ├── star_schema_erd.drawio          # Gold layer dimension and fact relationship diagram
│   ├── data_catalog.md                 # Gold layer column descriptions and data types
│   └── query_optimization_guide.md     # Benchmarks and index execution plan breakdowns
│
├── scripts/                            # SQL analytics scripts categorized by objective
│   ├── eda/                            # Data profiling, null checks, and histogram binning
│   │   ├── 01_data_profiling.sql
│   │   ├── 02_null_and_duplicate_audit.sql
│   │   └── 03_distribution_and_outliers.sql
│   │
│   ├── advanced_analytics/             # Complex analysis and metrics calculations
│   │   ├── 01_cohort_retention_analysis.sql
│   │   ├── 02_rfm_customer_segmentation.sql
│   │   └── 03_rolling_metrics_and_mom.sql
│   │
│   └── optimization/                   # Query tuning and index scripts
│       ├── 01_index_creation.sql
│       └── 02_execution_plan_refactoring.sql
│
├── tests/                              # Validation scripts for analytical output accuracy
│
├── README.md                           # Project overview and setup instructions
├── LICENSE                             # MIT License
└── .gitignore                          # Standard git ignore configuration
🛡️ License
This project is licensed under the MIT License. You are free to use, modify, and share this project with proper attribution.

🌟 About Me
Hi there, I'm Fakhruddin Hatod 👋
🎓 B.Tech Data Science Student at Sushila Devi Bansal College of Engineering

💡 Passionate about turning complex data into actionable insights and building scalable data solutions.

💻 About Me
🔭 Current Focus: Advanced Machine Learning algorithms, predictive modeling, and SQL Analytics.

🛠️ Core Skills: Python, SQL, Data Analysis, Machine Learning, Data Visualization.

📚 Currently Learning: Deep Learning, Model Deployment, and Big Data Technologies.

🎯 Goal: Building impactful AI/Data Science projects and preparing for industry roles.

🛠️ Tech Stack & Tools
Languages: SQL, Python

Databases: SQL Server 

Data Science & ML: Pandas, NumPy, Scikit-Learn, Matplotlib, Seaborn

Tools & Platforms: SSMS, Git, GitHub, VS Code, Draw.io

📬 Let's Connect!
Email: fakhruddinhatod@gmail.com
