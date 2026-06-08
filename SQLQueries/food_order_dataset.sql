CREATE TABLE food_orders( order_id INT, customer VARCHAR(30), restaurant VARCHAR(30), city VARCHAR(20), order_date DATE, amount INT, delivery_time INT, rating INT ); 
INSERT INTO food_orders VALUES (101,'Arjun','Biryani House','Hyderabad','2024-01-01',350,25,5), (102,'Sneha','Pizza Hub','Chennai','2024-01-01',500,40,4), (103,'Rahul','Burger Point','Mumbai','2024-01-02',220,20,3), (104,'Priya','Biryani House','Hyderabad','2024-01-03',700,35,5), (105,'Kiran','Pizza Hub','Chennai','2024-01-03',450,30,4), (106,'Ravi','Burger Point','Mumbai','2024-01-04',300,18,5);
INSERT INTO food_orders VALUES
(107,'Anjali','Biryani House','Hyderabad','2024-01-04',550,28,4),
(108,'Vijay','Pizza Hub','Bangalore','2024-01-05',650,32,5),
(109,'Keerthi','Burger Point','Mumbai','2024-01-05',270,22,4),
(110,'Sai','Biryani House','Hyderabad','2024-01-06',800,45,5),
(111,'Pooja','Pizza Hub','Chennai','2024-01-06',480,29,3),
(112,'Ramesh','Burger Point','Bangalore','2024-01-07',350,24,5),
(113,'Arjun','Pizza Hub','Hyderabad','2024-01-07',620,33,4),
(114,'Rahul','Biryani House','Mumbai','2024-01-08',410,27,4),
(115,'Sneha','Burger Point','Chennai','2024-01-08',260,19,3),
(116,'Priya','Pizza Hub','Hyderabad','2024-01-09',720,41,5),
(117,'Kiran','Biryani House','Bangalore','2024-01-09',580,26,4),
(118,'Ravi','Burger Point','Mumbai','2024-01-10',330,21,5);

=====================================================================================================================================
Select * from food_orders

-- 1.desice my partners
-- 2.offer promotion
-- 3.pritiotize to restauraants
--DDL
--DML
--DQl
	--Select
	--Where
	--group by
	--having
	-- Aggregate function
	-- limit 
	-- offset
	-- window function-over, partition by,rownumber,rank,dense rank,lead lag
	--CASE
	--Subqueries,CTEs
	--Distnct
	--String functions
	--Date functions
	--Execution order
	--joins
====================================================================================================
--I want  restarants list in desc order of sum of orders
---I want reasurants having more revenue in desc order
Select restaurant,sum(amount) as total_revenue---3
From food_orders----1
Group By restaurant---2
Order by total_revenue DESC----4
===================================================================================================
-- find city generating highest revenue

Select city,sum(amount) as total_revenue_city---3
From food_orders----1
Group By city---2
Order by total_revenue_city DESC----4
OFFSET 1
Limit 1





















