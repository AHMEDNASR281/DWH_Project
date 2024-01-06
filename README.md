# DWH_Project

🚀 Project Overview:
Our goal was to create a robust data warehouse . The journey began with our source relational database, meticulously designed to capture every transaction in our book sales business, from customer interactions to inventory management.

🛠️ The ETL Process:

Extract: We started by extracting data from multiple tables, including books, authors, and sales. This step required a keen eye to ensure data consistency and integrity.
Transform: The transformation phase was all about cleansing, deduplicating, and preparing the data. We developed custom scripts to automate this phase, ensuring our data was analysis-ready.
Load: Finally, the transformed data was structured into a star schema within our data warehouse, optimizing it for complex queries and reports.
🧩 Data Warehouse Architecture:
Our data warehouse now hosts a series of dimension and fact tables. The DimBook, DimCustomer, and DimDate tables provide context, while the FactSales table captures transactional data, allowing for multi-dimensional analysis.
