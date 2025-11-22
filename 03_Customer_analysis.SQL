-- CUSTOMER PURCHASE FREQUENCY
SELECT CustomerID, COUNT(TransactionDate) AS NumberOfTransactions
FROM Sales_transaction
GROUP BY CustomerID 
ORDER BY NumberOfTransactions DESC;

-- HIGH PURCHASE FREQUENCY CUSTOMERS
SELECT CustomerID, COUNT(TransactionID) AS NumberOfTransactions,
       SUM(QuantityPurchased * Price) AS TotalSpent
FROM Sales_transaction
GROUP BY CustomerID
HAVING COUNT(TransactionID) > 10 AND TotalSpent > 1000
ORDER BY TotalSpent DESC;

-- OCCASIONAL CUSTOMERS
SELECT CustomerID, COUNT(TransactionID) AS NumberOfTransactions,
       SUM(QuantityPurchased * Price) AS TotalSpent
FROM Sales_transaction
GROUP BY CustomerID
HAVING COUNT(TransactionID) <= 2
ORDER BY NumberOfTransactions ASC, TotalSpent DESC;
