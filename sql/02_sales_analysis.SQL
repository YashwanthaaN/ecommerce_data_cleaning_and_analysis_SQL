-- TOTAL SALES SUMMARY
SELECT 
    ProductID,
    SUM(QuantityPurchased) AS TotalUnitsSold,
    SUM(QuantityPurchased * Price) AS TotalSales
FROM Sales_transaction
ORDER BY TotalSales DESC;
