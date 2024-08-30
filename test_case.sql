-- 1. Execution Order
-- Retrieve all columns from the Products table, but only for products priced above $50. Sort the results by Price in descending order.

SELECT * FROM Products
WHERE price > 50 
ORDER BY Price desc


-- Get the number of products in each category from the Products table. Only include categories that have more than 5 products.
SELECT CategoryID, COUNT(*) AS ProductCount 
FROM Products
GROUP BY CategoryID
HAVING COUNT (*) > 5


-- Increase the price of all products in the Electronics category by 15%. Add a new column Discount to the Products table.
UPDATE Products
SET Price = Price * 1.15
WHERE CategoryID = 1;
ALTER TABLE Products
ADD Discount DECIMAL(5, 2);


--  Insert a new product into the Products table with the following details: ProductID = 101, ProductName = 'Wireless Mouse', CategoryID = 1, Price = 25.99, Stock = 50.
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, Stock, Discount) VALUES 
(101, 'Wireless Mouse', 1, 25.99, 50, 0.0)


-- 2. Comparison Operators
-- Retrieve all products with a price between $20 and $100. Exclude products that are out of stock.
SELECT * 
FROM Products
WHERE Price BETWEEN 20 AND 100
   OR Price = 0.0;

-- Find all customers whose names are not 'Alice' and whose email addresses do not contain 'example.com'.
SELECT * 
FROM Customers
WHERE CustomerName != 'Alice'
  AND Email NOT LIKE '%example.com%'


-- 3. Logical Operators
-- Get all orders placed by customers who live in either 'New York' or 'Los Angeles' and placed between '2024-01-01' and '2024-06-30'.
SELECT o.OrderID, o.CustomerID, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.City IN ('New York', 'Los Angeles')
  AND o.OrderDate BETWEEN '2024-01-01' AND '2024-06-30';


-- Find all products where the Description is not provided (i.e., Description is NULL).
select * from products
where description IS NULL


-- 3. Scalar Functions
-- List all customers with their names in uppercase and include the current date of their last order.
SELECT UPPER(CustomerName) AS CustomerNameUpper, GETDATE() AS LastOrderDate
FROM Customers;

-- Calculate the number of days since the last order for each customer. Show the CustomerID, CustomerName, and the days since the last order.
SELECT CustomerID, CustomerName, DATEDIFF(DAY, MAX(OrderDate), GETDATE()) AS DaysSinceLastOrder
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY CustomerID, CustomerName;


-- 4. Aggregation Functions
--  Count the total number of orders placed and calculate the total revenue from all orders in the month of July 2024.
SELECT COUNT(OrderID)
FROM Orders
WHERE MONTH(OrderDate) = 7
  AND YEAR(OrderDate) = 2024;

-- 5. Find the product with the lowest price and the product with the highest price in the Products table.
SELECT MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice
FROM Products


--6. Others (JOIN, AS, UNION)
--  Create a report showing OrderID, CustomerName, and TotalAmount for all orders. Use aliases for the table names in your query.
SELECT o.OrderID, c.CustomerName, o.TotalAmount
FROM Orders AS o
JOIN Customers AS c ON o.CustomerID = c.CustomerID;


-- Retrieve a combined list of all customers and all products, showing their names and type (e.g., 'Customer' or 'Product').
SELECT CustomerName AS Name, 'Customer' AS Type
FROM Customers
UNION
SELECT ProductName AS Name, 'Product' AS Type
FROM Products;

--Generate a report that includes each category's name, the total number of products, and the average price of products in each category. Exclude categories with fewer than 10 products.
SELECT c.CategoryName, 
       COUNT(p.ProductID) AS TotalProducts, 
       AVG(p.Price) AS AveragePrice
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
HAVING COUNT(p.ProductID) >= 10;



