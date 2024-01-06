# DWH_Project

🚀 <h1>Project Overview:</h1>
Our goal was to create a robust data warehouse . The journey began with our source relational database, meticulously designed to capture every transaction in our book sales business, from customer interactions to inventory management.

<br/>

🛠️ <h1>The ETL Process:<h1>

Extract: We started by extracting data from multiple tables, including books, authors, and sales. This step required a keen eye to ensure data consistency and integrity.
Transform: The transformation phase was all about cleansing, deduplicating, and preparing the data. We developed custom scripts to automate this phase, ensuring our data was analysis-ready.
Load: Finally, the transformed data was structured into a star schema within our data warehouse, optimizing it for complex queries and reports.

<br/>
<h1>🧩 Data Warehouse Architecture: </h1>
Our data warehouse now hosts a series of dimension and fact tables. The DimBook, DimCustomer, and DimDate tables provide context, while the FactSales table captures transactional data, allowing for multi-dimensional analysis.
