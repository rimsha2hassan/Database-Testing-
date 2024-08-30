-- Insert into Categories
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES 
(1, 'Electronics', 'Devices and gadgets'),
(2, 'Books', 'Various genres of books'),
(3, 'Clothing', 'Men, Women, and Kids clothing');


-- Insert into Products
INSERT INTO Products (ProductID, ProductName, CategoryID, Price, Stock, Discount, Description) VALUES 
(1, 'Smartphone', 1, 299.99, 50, 15.0, "Electronic Product"),
(2, 'Laptop', 1, 899.99, 30, 15.0, "Use for Office"),
(3, 'Fiction Book', 2, 14.99, 100, 0.0, "Interesting Stories"),
(4, 'T-Shirt', 3, 19.99, 200, 0.0, "Cool wardrobe"),
(101, 'Wireless Mouse', 1, 25.99, 50, 0.0, "")


-- Insert into Customers
INSERT INTO Customers (CustomerID, CustomerName, Email, Address) VALUES 
(1, 'John Doe', 'john@example.com', '123 Main St'),


-- Insert into Orders 
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES 
(1, 1, '2024-08-30', 319.98),
(2, 2, '2024-08-29', 34.98);



-- Insert into OrderItems
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, Price) VALUES 
(1, 1, 1, 1, 299.99),
(2, 1, 4, 1, 19.99),
(3, 2, 3, 2, 29.98);


-- Insert into Payments
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod) VALUES 
(1, 1, '2024-08-30', 319.98, 'Credit Card'),
(2, 2, '2024-08-29', 34.98, 'PayPal');

