-- FIX INCORRECT PRICES BETWEEN SALES_TRANSACTION AND PRODUCT_INVENTORY
SELECT s.TransactionID, s.Price AS TransactionPrice, p.Price AS InventoryPrice 
FROM sales_transaction s 
LEFT JOIN product_inventory p 
    ON s.ProductID = p.ProductID
WHERE s.Price != p.Price;

UPDATE sales_transaction s 
JOIN product_inventory p 
    ON s.ProductID = p.ProductID
SET s.Price = p.Price
WHERE s.Price != p.Price;

-- FIX NULL VALUES IN LOCATION COLUMN
SELECT COUNT(*) FROM customer_profiles WHERE Location IS NULL;

UPDATE customer_profiles 
SET Location = 'unknown'
WHERE Location IS NULL;


-- CLEANING TRANSACTION DATE
CREATE TABLE Sales_transaction_updated AS
SELECT *,
       STR_TO_DATE(TransactionDate, '%Y-%m-%d') AS TransactionDate_updated
FROM Sales_transaction;
DROP TABLE Sales_transaction;
RENAME TABLE Sales_transaction_updated TO Sales_transaction;
