**Retail Sales Analysis Project**

**Project Overview**
This project analyzes a retail sales dataset to identify key business insights related to sales performance, product profitability, customer behavior, and regional trends.
The project demonstrates a complete data analysis workflow using Python, MySQL, SQL, and Power BI.

The goal of this project is to transform raw sales data into actionable insights and interactive dashboards that help understand business performance.

**Tools & Technologies Used**
1. Python (Pandas, NumPy) – Data cleaning and preprocessing
2. MySQL – Data storage and querying
3. SQL – Business analysis and KPI extraction
4. Power BI – Data visualization and dashboard creation
5. Jupyter Notebook – Data analysis workflow

**Project Workflow**
1. Data Preparation (Python)

* Loaded dataset using Pandas

* Performed data cleaning and preprocessing

* Converted date columns to proper datetime format

* Created additional features such as:

  -Year
  
  -Month
  
  -Profit Margin

* Exported cleaned data for database storage

2️. Database Integration (MySQL)

* Connected Python to MySQL using SQLAlchemy

* Uploaded cleaned dataset into MySQL as retails_table

* Used SQL queries for business analysis

3️. SQL Analysis
Performed SQL queries to analyze:

* Total revenue and total profit

* Sales performance by region

* Profitability by product category

* Top customers by revenue

* Monthly sales trends

* Impact of discounts on profitability

* Identification of loss-making products

4️. Data Visualization (Power BI)
Created an interactive Power BI dashboard consisting of:

**Executive Summary**

* Total Revenue

* Total Profit

* Profit Margin

* Total Orders

* Monthly Sales Trend

**Product Analysis**

* Sales by Category

* Profit by Sub-category

* Category contribution to revenue

**Customer Insights**

* Sales by Customer Segment

* Top Customers by Revenue

* Average Order Value

**Profitability Analysis**

* Discount vs Profit relationship

* Loss-making product identification

**Key Insights**

* Certain regions contribute significantly more revenue than others.

* The Technology category generates the highest profit margin.

* A few product sub-categories show low or negative profitability.

* The Consumer segment drives the majority of sales.

* A small group of customers contributes a large share of total revenue.

* Higher discounts tend to reduce overall profitability.

**Skills Demonstrated**

* Data Cleaning & Preprocessing

* Exploratory Data Analysis (EDA)

* SQL-based Business Analysis

* Data Visualization & Dashboard Design

* Business Insight Generation

**📁 Project Structure**
Retail-Sales-Analysis
│
├── dataset
│   └── superstore_sales.csv
│
├── notebooks
│   └── data_cleaning_analysis.ipynb
│
├── sql_queries
│   └── analysis_queries.sql
│
├── powerbi_dashboard
│   └── retail_sales_dashboard.pbix
│
└── README.md

**Future Improvements**

* Implement customer segmentation analysis

* Perform predictive sales forecasting

* Build a fully automated data pipeline


**👤 Author**

Bishwaraj Chakraborty

Aspiring Data Analyst with skills in Python, SQL, and Power BI, focused on transforming data into meaningful business insights.

