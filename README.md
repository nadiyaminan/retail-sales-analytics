# Retail Sales Performance Analytics

## Business Problem
A multi-store retail chain's management had no unified view of sales performance across regions, categories, and time. This project analyzes 9,994 orders to answer: **Which regions/products are underperforming, and why — and what should the business do about it?**

## Dataset
[Kaggle — Superstore Sales Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) — 9,994 orders, 21 columns, covering Sales, Profit, Discount, Region, Category, and more.

## Tools & Tech Stack
Python (Pandas, Matplotlib), SQL (SQLite), Jupyter Notebook, Git/GitHub. *(Power BI dashboard and Excel analysis to be added.)*

## Key Insights

1. **18.72% of orders (1,871 orders) are unprofitable**, totaling a **-$156,131 loss**.
2. **The discount tipping point is 20%** — orders stay profitable at 20% discount or below; at 30%+ discount, average profit turns consistently negative (as low as -$310.70 at 50% discount).
3. **Tables and Bookcases sub-categories drive the biggest losses** (-$17,725 and -$3,473 respectively), directly caused by excessive discounting.
4. **Furniture has the highest average discount (17.4%)** among all categories, explaining why it earns similar revenue to Office Supplies but 7x less profit.
5. **Central region over-discounts the most (24% average)**, nearly double the West region (10.9%) — explaining why Central has the lowest profit margin (7.92%) despite decent sales.
6. **West is the strongest-performing region**, with the highest profit margin (14.94%).
7. **November shows a strong seasonal sales spike** (holiday season), but profit doesn't scale proportionally — suggesting holiday discounting is eroding margin.

## Recommendations
- **Cap standard discounts at 20%** company-wide; require manager approval for anything higher.
- **Prioritize discount policy review for Furniture** (especially Tables and Bookcases) and the **Central region**, where over-discounting is most severe.
- **Investigate the Cubify 3D Printer product line**, which loses significant money despite low average category discounting — likely a cost/pricing issue rather than a discount issue.
- **Review November's holiday discounting strategy** — high sales volume isn't translating proportionally into profit.

## Project Structure

retail-sales-analytics/
- data/
  - raw/  (original Kaggle dataset)
  - processed/  (cleaned dataset + SQLite database)
- notebooks/
  - 01_data_cleaning.ipynb
  - 02_sql_analysis.ipynb
- sql/
  - analysis_queries.sql
- images/  (saved charts)
- README.md

## How to Reproduce
1. Clone this repo
2. Install dependencies: `pip install pandas matplotlib`
3. Open `notebooks/01_data_cleaning.ipynb` and run all cells
4. Open `notebooks/02_sql_analysis.ipynb` to explore the SQL queries

## Author
Nadiya Minan — B.Tech AI & Data Science graduate | Data Analyst
linkedin.com/in/nadiyaminan | minannadiya@gmail.com