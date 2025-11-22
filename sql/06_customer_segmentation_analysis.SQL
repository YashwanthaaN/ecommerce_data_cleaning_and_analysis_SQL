-- CUSTOMER SEGMENTATION BASED ON TOTAL QUANTITY PURCHASED

-- 1. Create a simple customer_segment table
CREATE TABLE customer_segment AS
SELECT
    CustomerID,
    SUM(QuantityPurchased) AS TotalQuantityPurchased,
    CASE
        WHEN SUM(QuantityPurchased) BETWEEN 1 AND 10 THEN 'Low'
        WHEN SUM(QuantityPurchased) BETWEEN 11 AND 30 THEN 'Med'
        ELSE 'High'
    END AS CustomerSegment
FROM Sales_transaction
GROUP BY CustomerID;

-- 2. Count customers in each segment
SELECT
    CustomerSegment,
    COUNT(*) AS NumberOfCustomers
FROM customer_segment
GROUP BY CustomerSegment;
