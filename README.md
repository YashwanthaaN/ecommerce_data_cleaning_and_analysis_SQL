# 🛒 E-Commerce SQL Case Study — Data Cleaning + Sales Analysis

This project contains a complete SQL workflow for cleaning an e-commerce dataset and performing detailed sales, customer, and product analysis.

The goal is to understand product performance, customer behavior, sales trends, and growth indicators using SQL only.

---

## 📂 Project Structure
ecommerce-sql-data-cleaning-and-analysis/
│── sql/
│ ├── 01_data_cleaning.sql
│ ├── 02_sales_analysis.sql
│ ├── 03_customer_analysis.sql
│ ├── 04_product_analysis.sql
│ ├── 05_growth_and_trends.sql
│── visuals/
│── README.md

## 🧹 1. Data Cleaning Tasks

- Fix mismatched prices between sales and product inventory  
- Handle NULL values in `customer_profiles.Location`  
- Convert incorrect date formats using `STR_TO_DATE()`  
- Rebuild `Sales_transaction` table with cleaned date column  

---

## 📊 2. Analysis Performed

### **Sales Analysis**
- Total sales per product  
- Total units sold  
- Revenue ranking  

### **Customer Analysis**
- Purchase frequency  
- High-value customers  
- Occasional customers  
- Loyalty using first vs last purchase date  

### **Product Analysis**
- Category-wise sales  
- High revenue products  
- Low selling products  
- Repeat purchases  

### **Growth & Trend Analysis**
- Daily sales trend  
- Monthly sales growth rate  
- MoM growth using window functions  


## 🗃 SQL Features Used
- JOINS  
- GROUP BY, HAVING  
- CTEs  
- Window Functions (`LAG`)  
- Date Parsing  
- Data Cleaning Updates  

---

## 🚀 How to Run
1. Open the `.sql` files inside `/sql`  
2. Execute in MySQL Workbench or any SQL environment  
3. Optional: Add visuals for better presentation  
