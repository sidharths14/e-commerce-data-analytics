# E-commerce Data Analytics

End-to-end analysis of 541,909 retail transactions 
to identify revenue drivers, customer segments, and return patterns.

## Dataset
- Source: Online Retail Dataset (Kaggle)
- Size: 541,909 transactions, 8 columns
- Period: 2010-2011

## Project Structure
- `01_data_cleaning.py` — Data cleaning pipeline

## Key Cleaning Decisions
- Split orders (531,285) vs returns (10,624) — negatives are real business events
- Separated 133,361 rows with missing CustomerID for product-only analysis
- Fixed InvoiceDate from string to datetime
- Fixed CustomerID from float to int

## Tools
- Python, Pandas, MySQL, Tableau

## Status
🔄 In Progress — Data cleaning complete, SQL analysis next
