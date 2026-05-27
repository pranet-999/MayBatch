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

--Just first 2 rows
--limit
Select * 
from orders
LIMIT 3

--last 2 rows
Select * 
from orders
OFFSET 3

-- no of rows -100
-- I want first 20 rows--->limit 20
-- I want last 80 rows--->offset 20
-- I want last 20 rows---offset 80
-- I want  rows from 20 t0 40---limit 21 offset 19
-- I want orders order id 3--->limit 1 offset 2
-- Skip first 2 orders then show next 2 orders--->


Select *
from orders
limit 1
offset 3

--100  -80rows 40 rows

-- I want to know from which cities my customers belongs to


--Distinct
Select DISTINCT city
from orders

--IN opererator

Select * 
from orders
where city IN ('Hyderabad','Vizag')

--Between
--find orders where price is between 30 and 300
Select * 
from orders
Where price between 30 and 300

--LIKE
--Supoose I want to get customer name starting with R
Select * 
from orders
Where customer_name LIKE 'R%'

Select * 
from orders
Where customer_name NOT LIKE '%n'

Select * 
from orders
Where customer_name LIKE '%i%'

--NOT IN
Select * 
from orders
where city NOT IN ('Hyderabad','Vizag')



Select Max(price)
From orders



Select product_name,price
from orders
Where price=(Select Max(price)
From orders)
