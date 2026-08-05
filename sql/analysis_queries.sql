-- ============================================
-- Retail Sales Performance Analytics
-- SQL Analysis Queries
-- ============================================

-- Query 1: Revenue and Profit by Region
-- Business question: which regions are strongest/weakest, and why?
SELECT Region,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit,
       ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS Profit_Margin_Pct
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Finding: West has the strongest profit margin (14.94%), Central the weakest (7.92%)
-- Central's low margin is driven by its high average discount rate (24%)


-- Query 2: Average Profit by Discount Level
-- Business question: at what discount level do orders stop being profitable?
SELECT Discount,
       ROUND(AVG(Profit), 2) AS Avg_Profit,
       COUNT(*) AS Num_Orders
FROM orders
GROUP BY Discount
ORDER BY Discount;

-- Finding: Orders stay profitable at 20% discount or below.
-- At 30% discount and above, average profit turns consistently negative.
-- Recommendation: cap standard discounts at 20%.


-- Query 3: Weakest Sub-Categories by Total Profit
-- Business question: which product sub-categories are losing the most money?
SELECT "Sub-Category",
       ROUND(SUM(Profit), 2) AS Total_Profit,
       ROUND(AVG(Discount), 3) AS Avg_Discount
FROM orders
GROUP BY "Sub-Category"
ORDER BY Total_Profit ASC
LIMIT 5;

-- Finding: Tables and Bookcases are the biggest loss-makers,
-- both driven by discount rates well above the 20% safe threshold.


-- Query 4: Monthly Sales and Profit Trend
-- Business question: is the business growing over time?
SELECT OrderMonth,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY OrderMonth
ORDER BY OrderMonth;

-- Finding: Sales trend upward with a strong seasonal spike in November,
-- but profit doesn't scale proportionally with sales, suggesting
-- holiday-season discounting is eroding margin.