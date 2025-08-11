# Elevated-Lab-Internship-Task4
Using SQL queries to extract and analyze data from a database.

# Ecommerce Data Analysis with SQL

This repository contains a sample MySQL-compatible Ecommerce database and a collection of SQL queries and views for data analysis. It is designed for learning, practicing, and demonstrating SQL data analysis skills in the context of an online retail platform.

## Features

- **MySQL Database Schema**: Includes tables for users, products, orders, categories, reviews, and order items.
- **Sample Data**: 300+ records across all tables for realistic analysis.
- **Analysis Queries**: Ready-to-use SQL for sales, customers, products, and more.
- **Analysis Views**: Predefined views for common reporting tasks.
- **Subqueries**: Examples for advanced SQL analysis.

## Getting Started

### 1. Import the Database

1. Download or clone this repository.
2. Open the provided SQL dump file (e.g. `ecommerce_db_dump_full.sql`) in MySQL Workbench.
3. Execute the script to create the schema and populate the sample data.

### 2. Run Analysis Queries

- Use the queries in `ecommerce_analysis_queries.sql` for sales, product, and customer analysis.
- Try the subquery examples in `ecommerce_subqueries.sql` for more advanced insights.
- Use the views in `analysis_views.sql` to simplify reporting and analysis.

### 3. Example Queries

Some useful examples:
```sql
SELECT * FROM monthly_sales;
SELECT * FROM products_never_ordered;
```

## Database Schema Overview

- **users**: Customer information
- **categories**: Product categories
- **products**: Product details
- **orders**: Order header information
- **order_items**: Line items for each order
- **reviews**: Product reviews and ratings

## Analysis Topics Covered

- Sales trends over time
- Most popular products and categories
- Best customers by purchase value
- Inventory status and low stock alerts
- Product ratings and review counts
- Orders by status
- Advanced filtering using subqueries

**Contact**  
For questions or suggestions, open an issue or reach out via GitHub.
