-- DAILY SALES TREND
SELECT STR_TO_DATE(TransactionDate, '%Y-%m-%d') AS DateTrans,
       COUNT(TransactionID) AS TransactionCount,
       SUM(QuantityPurchased) AS TotalUnitsSold,
       SUM(Price * QuantityPurchased) AS TotalSales
FROM Sales_transaction
GROUP BY DateTrans
ORDER BY DateTrans DESC;

-- MONTHLY GROWTH RATE
WITH monthly_sales AS (
    SELECT MONTH(STR_TO_DATE(TransactionDate, '%Y-%m-%d')) AS month,
           ROUND(SUM(QuantityPurchased * Price), 2) AS total_sales
    FROM Sales_transaction
    GROUP BY month
)
SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales,
    ROUND((total_sales - LAG(total_sales) OVER (ORDER BY month)) / 
           LAG(total_sales) OVER (ORDER BY month) * 100, 2) AS mom_growth_percentage
FROM monthly_sales
ORDER BY month;
