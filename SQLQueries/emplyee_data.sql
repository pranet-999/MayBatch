

CREATE TABLE employee_data (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    join_date DATE,
    department VARCHAR(50),
    email VARCHAR(100),
    is_active BOOLEAN,
    bonus DECIMAL(10,2),
    manager_id INT,
    city VARCHAR(50),
    rating DECIMAL(2,1),
    last_login TIMESTAMP
);

INSERT INTO employee_data VALUES
(1,'Ravi',28,65000.50,'2023-01-15','IT','ravi@mail.com',TRUE,5000,101,'Hyderabad',4.5,'2026-05-20 10:30:00'),

(2,'Priya',NULL,72000,'2022-03-10','HR',NULL,TRUE,NULL,102,'Bangalore',3.8,'2026-05-18 08:00:00'),

(3,'Arjun',35,NULL,'2021-06-25','Finance','arjun@mail.com',FALSE,8000,NULL,'Chennai',NULL,NULL),

(4,'Sneha',29,54000,'2024-01-01','IT','sneha@mail.com',TRUE,4000,101,'Hyderabad',4.2,'2026-05-10 11:00:00'),

(5,'Kiran',40,95000,'2020-11-18','Sales',NULL,FALSE,NULL,103,NULL,4.8,NULL),

(6,'Pooja',31,61000,'2023-07-19','Marketing','pooja@mail.com',TRUE,2000,102,'Delhi',3.6,'2026-05-15 15:20:00'),

(7,'Rahul',NULL,45000,'2022-09-11','Support','rahul@mail.com',TRUE,NULL,NULL,'Pune',NULL,NULL),

(8,'Neha',27,NULL,'2024-04-05','IT',NULL,FALSE,3500,101,'Bangalore',4.0,'2026-05-11 09:30:00'),

(9,NULL,38,85000,'2021-02-14','Finance','finance@mail.com',TRUE,6000,104,'Chennai',4.7,NULL),

(10,'Asha',25,39000,'2025-01-12','HR','asha@mail.com',TRUE,NULL,NULL,NULL,3.5,'2026-05-19 13:00:00'),

(11,'Ravi',32,75000,'2022-10-10','IT',NULL,TRUE,4500,101,'Hyderabad',4.1,NULL),

(12,'Priya',45,120000,'2019-05-01','Management','priya@mail.com',TRUE,10000,100,'Delhi',4.9,'2026-05-12 18:00:00'),

(13,'Kiran',NULL,NULL,'2023-03-15','Support',NULL,FALSE,NULL,NULL,'Pune',NULL,NULL),

(14,'Arjun',36,67000,'2020-07-21','Sales','arjun2@mail.com',TRUE,2000,103,'Chennai',3.9,NULL),

(15,'Sneha',29,69000,'2022-08-14','IT','sneha2@mail.com',TRUE,NULL,101,'Hyderabad',4.4,'2026-05-14 07:45:00'),

(16,'Rahul',50,150000,'2018-01-01','Management',NULL,TRUE,15000,100,'Delhi',5.0,NULL),

(17,'Neha',26,42000,'2024-02-01','HR','neha@mail.com',FALSE,NULL,NULL,'Bangalore',3.2,NULL),

(18,'Pooja',34,NULL,'2021-11-30','Marketing',NULL,TRUE,5000,102,'Pune',4.0,'2026-05-13 14:30:00'),

(19,'Asha',NULL,52000,'2023-09-09','Finance','asha2@mail.com',TRUE,NULL,104,NULL,NULL,NULL),

(20,'Ravi',37,88000,'2020-12-25','IT','ravi2@mail.com',TRUE,7000,101,'Hyderabad',4.6,'2026-05-20 12:00:00');





INSERT INTO employee_data VALUES
(21,'Abhishek',29,64000,'2022-05-11','IT','abhishek@mail.com',TRUE,2500,101,'Hyderabad',4.1,'2026-05-13 09:00:00'),
(22,'Meera',34,NULL,'2021-03-15','Finance',NULL,FALSE,NULL,104,'Chennai',NULL,NULL),
(23,'Suresh',41,98000,'2020-08-21','Sales','suresh@mail.com',TRUE,6000,103,'Delhi',4.5,NULL),
(24,'Divya',27,52000,'2024-01-18','HR','divya@mail.com',TRUE,NULL,102,'Bangalore',3.7,NULL),
(25,'Manoj',NULL,NULL,'2023-06-10','Support',NULL,TRUE,NULL,NULL,NULL,NULL,NULL),

(26,'Lakshmi',38,86000,'2019-11-22','Management','lakshmi@mail.com',TRUE,10000,100,'Pune',4.8,'2026-05-14 10:00:00'),
(27,'Varun',31,71000,'2022-09-09','IT','varun@mail.com',TRUE,3500,101,'Hyderabad',4.0,NULL),
(28,'Keerthi',26,48000,'2025-02-01','Marketing',NULL,FALSE,NULL,102,'Bangalore',3.4,NULL),
(29,'Harsha',44,115000,'2018-04-17','Management','harsha@mail.com',TRUE,14000,100,'Delhi',4.9,'2026-05-14 12:30:00'),
(30,'Anusha',30,NULL,'2023-07-25','Finance',NULL,TRUE,NULL,NULL,'Chennai',NULL,NULL),

(31,'Naveen',35,76000,'2021-12-14','Sales','naveen@mail.com',TRUE,4000,103,'Pune',4.2,NULL),
(32,'Bhavana',28,55000,'2024-08-19','HR',NULL,TRUE,NULL,102,'Hyderabad',3.8,NULL),
(33,'Tarun',39,NULL,'2020-10-03','Support','tarun@mail.com',FALSE,NULL,NULL,'Delhi',NULL,NULL),
(34,'Swathi',25,43000,'2025-01-11','Marketing','swathi@mail.com',TRUE,1200,102,'Bangalore',3.3,NULL),
(35,'Ramesh',46,125000,'2017-09-15','Management',NULL,TRUE,18000,100,'Chennai',5.0,'2026-05-15 08:45:00'),

(36,'Kavya',32,69000,'2022-06-28','IT','kavya@mail.com',TRUE,3200,101,'Hyderabad',4.3,NULL),
(37,'Ganesh',NULL,57000,'2023-05-04','Finance',NULL,TRUE,NULL,104,NULL,3.6,NULL),
(38,'Tejaswini',37,NULL,'2021-01-20','Sales','teja@mail.com',FALSE,NULL,NULL,'Pune',NULL,NULL),
(39,'Madhavi',29,61000,'2024-09-12','HR','madhavi@mail.com',TRUE,NULL,102,'Delhi',4.0,NULL),
(40,'Chaitanya',33,84000,'2020-03-09','IT',NULL,TRUE,5500,101,'Hyderabad',4.4,NULL),

(41,'Pradeep',27,NULL,'2025-03-21','Support',NULL,FALSE,NULL,NULL,'Bangalore',NULL,NULL),
(42,'Sowmya',36,73000,'2021-07-07','Marketing','sowmya@mail.com',TRUE,2600,102,'Chennai',4.1,NULL),
(43,'Ajay',42,102000,'2019-06-16','Finance','ajay@mail.com',TRUE,9000,104,'Delhi',4.7,'2026-05-15 11:00:00'),
(44,'Deepika',31,58000,'2023-11-11','HR',NULL,TRUE,NULL,102,'Pune',3.9,NULL),
(45,'Venkatesh',40,NULL,'2020-12-01','Sales','venky@mail.com',FALSE,NULL,103,'Hyderabad',NULL,NULL),

(46,'Sirisha',26,47000,'2024-04-14','IT','sirisha@mail.com',TRUE,1800,101,'Bangalore',3.5,NULL),
(47,'Uday',34,79000,'2021-02-18','Finance',NULL,TRUE,4200,104,'Chennai',4.2,NULL),
(48,'Padma',30,NULL,'2023-08-08','Support',NULL,TRUE,NULL,NULL,NULL,NULL,NULL),
(49,'Naresh',45,118000,'2018-10-10','Management','naresh@mail.com',TRUE,15000,100,'Delhi',4.9,'2026-05-15 15:00:00'),
(50,'Jyothi',28,54000,'2024-06-22','Marketing','jyothi@mail.com',TRUE,NULL,102,'Hyderabad',3.8,NULL);