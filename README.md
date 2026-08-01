# E-commerce Data Analytics

End-to-end analysis of 541,909 retail transactions to identify 
revenue drivers, customer segments, and return patterns.

## Dataset
- Source: Online Retail Dataset (Kaggle)
- Size: 541,909 transactions, 8 columns
- Period: 2010-2011

## Project Structure
- `01_data_cleaning.py` — Data cleaning pipeline
- `02_monthly_revenue.sql` — Monthly revenue trend analysis
- `03_top_products.sql` — Top products by revenue

## Key Cleaning Decisions
- Split orders (531,285) vs returns (10,624) — negatives are real business events
- Separated 133,361 rows with missing CustomerID for product-only analysis
- Fixed InvoiceDate from string to datetime
- Fixed CustomerID from float to int

## Key Insights So Far
- November 2011 was peak revenue month (£1.16M)
- December 2011 data is incomplete (only 9 days)
- Business sells niche gift/novelty items — low direct competition
- Revenue grew consistently through 2011

## Tools
- Python, Pandas, MySQL, Tableau (coming)

## Status
🔄 In Progress — SQL analysis underway
