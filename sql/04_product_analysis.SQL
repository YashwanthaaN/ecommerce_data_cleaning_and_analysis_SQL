-- PRODUCT CATEGORY PERFORMANCE
SELECT P.Category, 
SUM(s.QuantityPurchased) AS TotalUnitsSold,
       SUM(P.Price * s.QuantityPurchased) AS TotalSales
FROM product_inventory P 
JOIN Sales_transaction s 
      ON P.ProductID = s.ProductID
GROUP BY P.Category
ORDER BY TotalSales DESC;

-- TOP 10 HIGH SALES PRODUCTS
SELECT ProductID,
SUM(QuantityPurchased * Price) AS TotalRevenue
FROM sales_transaction
GROUP BY ProductID
ORDER BY TotalRevenue DESC
LIMIT 10;

-- LOW SALES PRODUCTS
SELECT ProductID,
       SUM(QuantityPurchased) AS TotalUnitsSold
FROM Sales_transaction
GROUP BY ProductID
HAVING TotalUnitsSold >= 1
ORDER BY TotalUnitsSold ASC
LIMIT 10;

-- REPEAT PURCHASES
SELECT CustomerID, ProductID, COUNT(TransactionID) AS TimesPurchased
FROM Sales_transaction
GROUP BY CustomerID, ProductID
ORDER BY TimesPurchased DESC;
