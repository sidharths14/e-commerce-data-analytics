# E-commerce Data Analytics

End-to-end analysis of 541,909 retail transactions to identify revenue 
drivers, customer segments, and return patterns.

## Dataset
- Source: Online Retail Dataset (Kaggle)
- Size: 541,909 transactions, 8 columns
- Period: 2010-2011 (UK-based e-commerce)

## Project Structure
- `01_data_cleaning.py` — Data cleaning pipeline
- `02_monthly_revenue.sql` — Monthly revenue trend analysis
- `03_top_products.sql` — Top products by revenue (operational items excluded)
- `04_country_analysis.sql` — Market segmentation & concentration risk
- `05_top_customers.sql` — Customer revenue concentration analysis
- `06_product_volume.sql` — Top products by units sold
- `07_top_returning_customers.sql` — Return rate analysis

## Key Findings

### Revenue Insights
- **Peak Month:** November 2011 (£1.16M) — holiday season effect
- **Market Concentration:** UK dominates at 96% of revenue (£7.3M)
- **Customer Concentration:** Top customer = 4% of total revenue (concentration risk)

### Geographic Analysis
- **Best Expansion Market:** Germany (94 unique customers, £2.4k avg spend)
- **Wholesale Concentration:** Netherlands (9 customers, £31.7k avg spend per customer)
- **Retail vs B2B:** Two distinct market types requiring different strategies

### Product Insights
- **Top Product:** PAPER CRAFT, LITTLE BIRDIE (£168.5k revenue)
- **Niche Market:** Business sells novelty/gift items with low direct competition
- **Product Quality:** <1% overall return rate (healthy)

### Critical Risk
- **Customer 16446:** 99.9% return rate (80,995 of 80,997 units returned) — requires investigation

## Data Cleaning Decisions
- Split orders (531,285) vs returns (10,624) — negatives = real business events
- Separated 133,361 rows with missing CustomerID for product-only analysis
- Fixed InvoiceDate from string to datetime format
- Fixed CustomerID from float64 to int64
- Excluded operational entries (POSTAGE, Manual, Discount) from product analysis

## Tools & Technologies
- **Data Processing:** Python, Pandas, Google Colab
- **Database:** MySQL
- **Analysis:** SQL (window functions, CTEs, subqueries)
- **Version Control:** Git/GitHub

## Key Takeaways for Business
1. Identify and monitor top wholesale customers (concentration risk)
2. Explore B2B expansion in Netherlands vs retail in Germany
3. Investigate high-return customer 16446
4. Leverage strong UK market while expanding internationally

- ## Data Limitations
- Cost data unavailable — cannot calculate true profit
- Only revenue metrics possible with current dataset
- December 2011 incomplete (only 9 days)
- Customer 16446 return spike requires data validation

## Status
✅ **Analysis Complete** — Data cleaning, SQL queries, insights generated
