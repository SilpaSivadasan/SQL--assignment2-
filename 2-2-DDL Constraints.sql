-- Create a database named Sales
create database Sales;
use Sales;

#Create the Orders table with the required constraints and columns
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100) NOT NULL,
    Product_Category VARCHAR(100) NOT NULL,
    Ordered_item VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);

#Add a new column order_quantity
ALTER TABLE Orders
ADD order_quantity INT;


#Rename the table Orders to Sales_Orders
ALTER TABLE Orders
rename to Sales_Orders;

#Insert 10 sample rows into the Sales_Orders table
INSERT INTO Sales_Orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
(1, 'John Doe', 'Electronics', 'Smartphone', '1234567890', 2),
(2, 'Jane Smith', 'Clothing', 'T-shirt', '0987654321', 3),
(3, 'Alice Brown', 'Books', 'Fiction Novel', '1122334455', 1),
(4, 'Bob White', 'Furniture', 'Sofa', '2233445566', 1),
(5, 'Charlie Green', 'Groceries', 'Milk', '3344556677', 5),
(6, 'Daisy Black', 'Electronics', 'Laptop', '4455667788', 1),
(7, 'Edward Blue', 'Sports', 'Basketball', '5566778899', 2),
(8, 'Fay Gray', 'Toys', 'Lego Set', '6677889900', 4),
(9, 'George Red', 'Food', 'Pasta', '7788990011', 6),
(10, 'Helen Yellow', 'Books', 'Cookbook', '8899001122', 3);

#Retrieve customer_name and Ordered_item
select Customer_name , Order_Id
from Sales_Orders;

#Use the update command to change the name of the product for any row
update Sales_Orders
set Ordered_item = 'Tablet'
where Order_Id = 1;

SELECT * FROM Sales_Orders;

#Drop the Sales_Orders table 
drop table Sales_Orders;

















