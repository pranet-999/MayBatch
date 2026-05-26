Select current_database()
--Creating orders table
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    city VARCHAR(30)
);


---Writing customers

INSERT INTO orders VALUES
(1, 'Ravi', 'Rice Bag', 2, 1200.50, 'Hyderabad'),
(2, 'Sita', 'Milk', 5, 30.00, 'Vijayawada'),
(3, 'Arjun', 'Oil', 1, 250.75, 'Guntur'),
(4, 'Priya', 'Sugar', 3, 45.00, 'Hyderabad'),
(5, 'Kiran', 'Soap', 10, 25.50, 'Vizag');

--See all the orders

Select * 
from orders

--See only important columns-name,city/ if i want to limit columns
Select customer_name,city 
from orders

--I limit the row,find customers who are prsent in hyd/ I want to filter out rows where city is hyd

Select * 
from orders
Where <condition>

Select * 
from orders
Where city ='Hyderabad'
AND
product_name='Rice Bag'

--Where means-filter only matching rows
--find products having price greater than 100
Select product_name,price 
from orders
where price>100



--See the highest priced products first
--ORDER BY

Select product_name,price
From orders
ORDER BY price DESC

--count the orders

Select count(*) as no_of_orders
From orders

--Calcuate total sales of all products sold

Select SUM(price*quantity) as total_sum
From orders

--Numerical methods:
--SUM
--Avg
--MIN
--MAX

--get product which is max price
Select Max(price)
From orders

Select MIN(price)
From orders















































