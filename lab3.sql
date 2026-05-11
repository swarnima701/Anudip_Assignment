Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.05 sec)

mysql> select * from demo;
Empty set (0.01 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> create database aggregation;
Query OK, 1 row affected (0.03 sec)

mysql> desc products;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| product_id    | varchar(10)  | NO   | PRI | NULL    |       |
| product_name  | varchar(20)  | NO   |     | NULL    |       |
| category      | varchar(20)  | NO   |     | NULL    |       |
| selling_price | double(12,2) | NO   |     | NULL    |       |
| orignal_price | double(12,2) | NO   |     | NULL    |       |
| stock         | int          | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql>  insert into products values('P102','Table','Furniture',8000,7500,14),('P103','Mobaile','Electronics',2000,17000,20),('P104','jeans','Clothing',2000,1500,14),('P105','Webcan','Electronics',6000,5500,13);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from products;
+------------+--------------+-------------+---------------+---------------+-------+
| product_id | product_name | category    | selling_price | orignal_price | stock |
+------------+--------------+-------------+---------------+---------------+-------+
| P102       | Table        | Furniture   |       8000.00 |       7500.00 |    14 |
| P103       | Mobaile      | Electronics |       2000.00 |      17000.00 |    20 |
| P104       | jeans        | Clothing    |       2000.00 |       1500.00 |    14 |
| P105       | Webcan       | Electronics |       6000.00 |       5500.00 |    13 |
+------------+--------------+-------------+---------------+---------------+-------+
4 rows in set (0.00 sec)

mysql> select sum(selling_price) from products;
+--------------------+
| sum(selling_price) |
+--------------------+
|           18000.00 |
+--------------------+
1 row in set (0.01 sec)

mysql> select avg(selling_price) from  products;
+--------------------+
| avg(selling_price) |
+--------------------+
|        4500.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*) from products;
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.01 sec)

mysql> select max(stock) from products;
+------------+
| max(stock) |
+------------+
|         20 |
+------------+
1 row in set (0.01 sec)

mysql> select min(stock) from products;
+------------+
| min(stock) |
+------------+
|         13 |
+------------+
1 row in set (0.00 sec)

mysql> select * from products order by stock;
+------------+--------------+-------------+---------------+---------------+-------+
| product_id | product_name | category    | selling_price | orignal_price | stock |
+------------+--------------+-------------+---------------+---------------+-------+
| P105       | Webcan       | Electronics |       6000.00 |       5500.00 |    13 |
| P102       | Table        | Furniture   |       8000.00 |       7500.00 |    14 |
| P104       | jeans        | Clothing    |       2000.00 |       1500.00 |    14 |
| P103       | Mobaile      | Electronics |       2000.00 |      17000.00 |    20 |
+------------+--------------+-------------+---------------+---------------+-------+
4 rows in set (0.00 sec)

mysql> select * from products order by stock desc;
+------------+--------------+-------------+---------------+---------------+-------+
| product_id | product_name | category    | selling_price | orignal_price | stock |
+------------+--------------+-------------+---------------+---------------+-------+
| P103       | Mobaile      | Electronics |       2000.00 |      17000.00 |    20 |
| P102       | Table        | Furniture   |       8000.00 |       7500.00 |    14 |
| P104       | jeans        | Clothing    |       2000.00 |       1500.00 |    14 |
| P105       | Webcan       | Electronics |       6000.00 |       5500.00 |    13 |
+------------+--------------+-------------+---------------+---------------+-------+
4 rows in set (0.00 sec)

mysql> select * from  products order by stock desc limit 3;
+------------+--------------+-------------+---------------+---------------+-------+
| product_id | product_name | category    | selling_price | orignal_price | stock |
+------------+--------------+-------------+---------------+---------------+-------+
| P103       | Mobaile      | Electronics |       2000.00 |      17000.00 |    20 |
| P102       | Table        | Furniture   |       8000.00 |       7500.00 |    14 |
| P104       | jeans        | Clothing    |       2000.00 |       1500.00 |    14 |
+------------+--------------+-------------+---------------+---------------+-------+
3 rows in set (0.00 sec)

mysql> create table Employee(employee_id varchar(10) not null primary key, employee_name varchar(20) not null,department varchar(20) not null ,salary int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Employee values('E101','Tejaswini','HR',40000),('E102','Swarnima','BSc',60000),('E103','Arti','CS',70000),('E104','Pratik','CA',90000),('E105','Om','AI',100000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Tejaswini     | HR         |  40000 |
| E102        | Swarnima      | BSc        |  60000 |
| E103        | Arti          | CS         |  70000 |
| E104        | Pratik        | CA         |  90000 |
| E105        | Om            | AI         | 100000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> desc Employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| employee_name | varchar(20) | NO   |     | NULL    |       |
| department    | varchar(20) | NO   |     | NULL    |       |
| salary        | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from Employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Tejaswini     | HR         |  40000 |
| E102        | Swarnima      | BSc        |  60000 |
| E103        | Arti          | CS         |  70000 |
| E104        | Pratik        | CA         |  90000 |
| E105        | Om            | AI         | 100000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select * from Employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Tejaswini     | HR         |  40000 |
| E102        | Swarnima      | BSc        |  60000 |
| E103        | Arti          | CS         |  70000 |
| E104        | Pratik        | CA         |  90000 |
| E105        | Om            | AI         | 100000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as Total_Employee from employee group by department;
+------------+----------------+
| department | Total_Employee |
+------------+----------------+
| HR         |              1 |
| BSc        |              1 |
| CS         |              1 |
| CA         |              1 |
| AI         |              1 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        40000 |
| BSc        |        60000 |
| CS         |        70000 |
| CA         |        90000 |
| AI         |       100000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |   40000.0000 |
| BSc        |   60000.0000 |
| CS         |   70000.0000 |
| CA         |   90000.0000 |
| AI         |  100000.0000 |
+------------+--------------+
5 rows in set (0.01 sec)

mysql> select department,avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     40000.0000 |
| BSc        |     60000.0000 |
| CS         |     70000.0000 |
| CA         |     90000.0000 |
| AI         |    100000.0000 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| BSc        |  60000 |        1 |
| CS         |  70000 |        1 |
| CA         |  90000 |        1 |
| AI         | 100000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select * from Employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Tejaswini     | HR         |  40000 |
| E102        | Swarnima      | BSc        |  60000 |
| E103        | Arti          | CS         |  70000 |
| E104        | Pratik        | CA         |  90000 |
| E105        | Om            | AI         | 100000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee group by department having count(*) > 1;
Empty set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) > 8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        40000 |
| BSc        |        60000 |
| CS         |        70000 |
| CA         |        90000 |
| AI         |       100000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) > 2000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        40000 |
| BSc        |        60000 |
| CS         |        70000 |
| CA         |        90000 |
| AI         |       100000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) > 5000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        40000 |
| BSc        |        60000 |
| CS         |        70000 |
| CA         |        90000 |
| AI         |       100000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql>