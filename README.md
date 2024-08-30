# Online Store Database-Testing
This project focuses on validating SQL queries and performing database testing using various SQL functionalities. It includes creating tables, executing queries, and verifying results against expected outcomes.  



**Project Overview**: To ensure database integrity, correctness of SQL queries, and proper data handling through comprehensive test cases.

**Schema Overview**: This database is designed to manage an online store, including products, orders, customers, and related data. Below is an overview of the key tables and their relationships.

    1. Tables Overview

| **Table Name**       | **Description**                                 | **Columns**                                                                                                                                             |
|----------------------|-------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| **`Products`**       | Stores information about the products available in the online store. | - `ProductID` (Primary Key, INT, Auto Increment): Unique identifier for each product. <br> - `ProductName` (VARCHAR): Name of the product. <br> - `CategoryID` (Foreign Key, INT): References the `Categories` table. <br> - `Price` (DECIMAL): Price of the product. <br> - `Stock` (INT): Number of items in stock. <br> - `Description` (TEXT): Detailed description of the product. <br> - `Discount` (DECIMAL): Discount applied to the product. |
| **`Categories`**     | Contains categories to which products belong.   | - `CategoryID` (Primary Key, INT, Auto Increment): Unique identifier for each category. <br> - `CategoryName` (VARCHAR): Name of the category.                                               |
| **`Orders`**         | Holds the orders placed by customers.           | - `OrderID` (Primary Key, INT, Auto Increment): Unique identifier for each order. <br> - `CustomerID` (Foreign Key, INT): References the `Customers` table. <br> - `OrderDate` (DATETIME): Date and time when the order was placed. <br> - `TotalAmount` (DECIMAL): Total amount for the order. |
| **`OrderDetails`**   | Contains details of products included in each order. | - `OrderDetailID` (Primary Key, INT, Auto Increment): Unique identifier for each order detail. <br> - `OrderID` (Foreign Key, INT): References the `Orders` table. <br> - `ProductID` (Foreign Key, INT): References the `Products` table. <br> - `Quantity` (INT): Number of units ordered. <br> - `UnitPrice` (DECIMAL): Price per unit of the product. |
| **`Customers`**      | Stores information about customers.             | - `CustomerID` (Primary Key, INT, Auto Increment): Unique identifier for each customer. <br> - `CustomerName` (VARCHAR): Name of the customer. <br> - `Email` (VARCHAR): Email address of the customer. <br> - `Phone` (VARCHAR): Phone number of the customer. <br> - `Address` (VARCHAR): Address of the customer. |
| **`CustomerReviews`**| Contains reviews submitted by customers for products. | - `ReviewID` (Primary Key, INT, Auto Increment): Unique identifier for each review. <br> - `ProductID` (Foreign Key, INT): References the `Products` table. <br> - `CustomerID` (Foreign Key, INT): References the `Customers` table. <br> - `Rating` (INT): Rating given by the customer. <br> - `Review` (TEXT): Text review provided by the customer. <br> - `ReviewDate` (DATETIME): Date when the review was submitted. |

    2. Relationships Overview
| **Relationship**                | **Description**                                                                                       |
|---------------------------------|-------------------------------------------------------------------------------------------------------|
| **Products → Categories**       | The `Products` table has a foreign key `CategoryID` linking it to the `Categories` table (one-to-many).|
| **Orders → Customers**          | The `Orders` table has a foreign key `CustomerID` linking it to the `Customers` table (one-to-many).   |
| **Orders → OrderDetails**       | The `OrderDetails` table has a foreign key `OrderID` linking it to the `Orders` table (one-to-many).   |
| **Products → OrderDetails**     | The `OrderDetails` table has a foreign key `ProductID` linking it to the `Products` table (many-to-many via `OrderDetails`).|
| **Customers → CustomerReviews** | The `CustomerReviews` table links `Customers` to `Products`, allowing for many-to-many relationships between customers and products via reviews. |

    
## Setup Instructions

1. **Create Tables:**
   Run the SQL script `create_tables.sql` to set up the database schema.

2. **Insert Sample Data:**
   Use the SQL script `insert_data.sql` to populate the tables with sample data.

3. **Run Test Cases:**
   Execute the SQL queries in `test_cases.sql` to verify the correctness of database operations.


## Covered Topics
Sample queries are attached. 
1. Order of Execution
2. Comparison Operators
3. Logical Operators
4. Scalar Functions
5. Aggregation Functions
6. Others (JOIN, AS, UNION)

## Contributing
If you'd like to contribute to this project, feel free to submit a pull request or open an issue with your suggestions.
