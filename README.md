# Sql_retail_sales_analysis
Project Title: Retail Sales Analysis
Level: Beginner
Database: p1_retail_db

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. This project is ideal for those who are starting their journey in data analysis and want to build a solid foundation in SQL.

Objectives
Set up a retail sales database: Create and populate a retail sales database with the provided sales data.
Data Cleaning: Identify and remove any records with missing or null values.
Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.
Project Structure
1. Database Setup
Database Creation: The project starts by creating a database named p1_retail_db.
Table Creation: A table named retail_sales is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

3. DATA CLEANING
Record Count: Determine the total number of records in the dataset.
Customer Count: Find out how many unique customers are in the dataset.
Category Count: Identify all unique product categories in the dataset.
Null Value Check: Check for any null values in the dataset and delete records with missing data.

QUESTIONS 
	   -- My Analysis & Findings
   -- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
   -- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
   -- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
   -- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
   -- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
   -- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
   -- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
   -- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
   -- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
   -- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
