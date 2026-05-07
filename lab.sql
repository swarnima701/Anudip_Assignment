step1 : 
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
-----------------------------------------------------------------------------------------
step 2: 
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.10 sec)
---------------------------------------------------------------------------------------------
step 3: 
mysql> create database ecommerce;
Query OK, 1 row affected (0.04 sec)
---------------------------------------------------------------------------------------------
Step 4: 
mysql> use ecommerce;
Database changed
---------------------------------------------------------------------------------------------
Step 5:
mysql> create table customer(Customer_ID varchar(5) not null primary key, name varchar(10) not null, city varchar(10) not null, Email varchar(20) not null, Address varchar(100) not null, phone_number varchar(10) not null, pincode int not null);
Query OK, 0 rows affected (0.09 sec)
-----------------------------------------------------------------------------------------------
Step 6:

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.02 sec)
-----------------------------------------------------------------------------------------------
Step 7:
mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_ID  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)
------------------------------------------------------------------------------------------------
 step 8:

mysql> create table product(product_id varchar(5) not null primary key,product_name varchar(10),category varchar(15),sub_category varchar(15),original_price double,selling_price double,stock varchar(20));
Query OK, 0 rows affected (0.03 sec)
------------------------------------------------------------------------------------------------
Step 9:

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| product             |
+---------------------+
2 rows in set (0.00 sec)
------------------------------------------------------------------------------------------------
 step 10:


mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(5)  | NO   | PRI | NULL    |       |
| product_name   | varchar(10) | YES  |     | NULL    |       |
| category       | varchar(15) | YES  |     | NULL    |       |
| sub_category   | varchar(15) | YES  |     | NULL    |       |
| original_price | double      | YES  |     | NULL    |       |
| selling_price  | double      | YES  |     | NULL    |       |
| stock          | varchar(20) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
------------------------------------------------------------------------------------------------
Step 11:


mysql> create table orders(order_id int not null primary key auto_increment, Customer_ID varchar(5) not null, product_id varchar(5) not null, quantity int not null, total_price double not null, payment_mode varchar(20) not null, order_date date not null, order_status varchar(20) not null, foreign key(Customer_ID) references customer(Customer_ID), foreign key(product_id) references product(product_id));
Query OK, 0 rows affected (0.07 sec)
-------------------------------------------------------------------------------------------
Step 12:


mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.00 sec)
----------------------------------------------------------------------------------------
Step 13:


mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_ID  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)
----------------------------------------------------------------------------------------
Step 14:


mysql> select * from customer;
Empty set (0.01 sec)
 -----------------------------------------------------------------------------------------
 step 15:


mysql>  insert into customer (Customer_ID, name, city, email, address, phone_number, pincode)values('C101', 'Tejaswini', 'Badlapur', 'teju9@gmail.com', 'orchid square','1234567892', 421505 );
Query OK, 1 row affected (0.01 sec)
----------------------------------------------------------------------------------------------
step 16:


mysql> select * from customer;
+-------------+-----------+----------+-----------------+---------------+--------------+---------+
| Customer_ID | name      | city     | Email           | Address       | phone_number | pincode |
+-------------+-----------+----------+-----------------+---------------+--------------+---------+
| C101        | Tejaswini | Badlapur | teju9@gmail.com | orchid square | 1234567892   |  421505 |
+-------------+-----------+----------+-----------------+---------------+--------------+---------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------------------
step 17:


mysql>  select Customer_id,name from customer;
+-------------+-----------+
| Customer_id | name      |
+-------------+-----------+
| C101        | Tejaswini |
+-------------+-----------+
1 row in set (0.00 sec)
---------------------------------------------------------------------------------------------------
step 18:


mysql> insert into customer values ('C102','swarnima','kalyan','swarnima@gmail.com', 'kalyan', '901922293', '400612');
Query OK, 1 row affected (0.01 sec)
------------------------------------------------------------------------------------------------
step 19:


mysql> insert into customer values ('C103','sanika', 'ambarnath', 'sanika@gmail.com','ambarnath', '1234567892', '23222' ),('C104', 'sayli', 'pune','sayli@gmail.com','universe','7894561238','82662' );
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0
--------------------------------------------------------------------------------------------
step 20:


mysql>  select * from customer;
+-------------+-----------+-----------+--------------------+---------------+--------------+---------+
| Customer_ID | name      | city      | Email              | Address       | phone_number | pincode |
+-------------+-----------+-----------+--------------------+---------------+--------------+---------+
| C101        | Tejaswini | Badlapur  | teju9@gmail.com    | orchid square | 1234567892   |  421505 |
| C102        | swarnima  | kalyan    | swarnima@gmail.com | kalyan        | 901922293    |  400612 |
| C103        | sanika    | ambarnath | sanika@gmail.com   | ambarnath     | 1234567892   |   23222 |
| C104        | sayli     | pune      | sayli@gmail.com    | universe      | 7894561238   |   82662 |
+-------------+-----------+-----------+--------------------+---------------+--------------+---------+
4 rows in set (0.00 sec)
------------------------------------------------------------------------------------------------
step 21:


mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_ID  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------
step 22:


mysql> alter table customer modify Customer_id varchar(10)  not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
-----------------------------------------------------------------------------------------------
step 23:


mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)
-------------------------------------------------------------------------------------------
step 24:


mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0
-------------------------------------------------------------------------------------------
step 25:


mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------
step 26:


mysql> alter table customer add state varchar(10) not null, add  country varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0
---------------------------------------------------------------------------------------------
step 27


mysql>  desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| Address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
--------------------------------------------------------------------------------------------
step 28


mysql>  alter table customer change column name Customer_name varchar(10) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
-----------------------------------------------------------------------------------------
step 29:


mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| Customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| Email         | varchar(20)  | NO   |     | NULL    |       |
| Address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------
step 30:


mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_ID  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)
---------------------------------------------------------------------------------------
step 31:


mysql> create table demo(id varchar(5) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.04 sec)
--------------------------------------------------------------------------------------
step 32:


mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
------------------------------------------------------------------------------------------------
step 33:


mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0
-------------------------------------------------------------------------------------------
step 34:


mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
----------------------------------------------------------------------------------
step 35:


mysql> alter table demo add primary key (id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0
-------------------------------------------------------------------------------
step 36:


mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
----------------------------------------------------------------------------
step 37:


mysql>  show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)
-----------------------------------------------------------------------------------
step 38:


mysql> use ecommerce;
Database changed
------------------------------------------------------------------------------------
step 39:

mysql>  select * from customer;
+-------------+---------------+-----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city      | Email              | Address       | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | Tejaswini     | Badlapur  | teju9@gmail.com    | orchid square | 1234567892   |  421505 |       0 |       |         |
| C102        | swarnima      | kalyan    | swarnima@gmail.com | kalyan        | 901922293    |  400612 |       0 |       |         |
| C103        | sanika        | ambarnath | sanika@gmail.com   | ambarnath     | 1234567892   |   23222 |       0 |       |         |
| C104        | sayli         | pune      | sayli@gmail.com    | universe      | 7894561238   |   82662 |       0 |       |         |
+-------------+---------------+-----------+--------------------+---------------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------------------------
step 40;


mysql> delete from customer where Customer_id = 'C103';
Query OK, 1 row affected (0.01 sec)
-----------------------------------------------------------------------------------------------
step 41:


mysql>  select * from customer;
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city     | Email              | Address       | phone_number | pincode | bill_no | state | country |
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | Tejaswini     | Badlapur | teju9@gmail.com    | orchid square | 1234567892   |  421505 |       0 |       |         |
| C102        | swarnima      | kalyan   | swarnima@gmail.com | kalyan        | 901922293    |  400612 |       0 |       |         |
| C104        | sayli         | pune     | sayli@gmail.com    | universe      | 7894561238   |   82662 |       0 |       |         |
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)
------------------------------------------------------------------------------------------
step 42:


mysql> select * from demo;
Empty set (0.00 sec)
------------------------------------------------------------------------------------------
step 43:


mysql> select * from customer;
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | Customer_name | city     | Email              | Address       | phone_number | pincode | bill_no | state | country |
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | Tejaswini     | Badlapur | teju9@gmail.com    | orchid square | 1234567892   |  421505 |       0 |       |         |
| C102        | swarnima      | kalyan   | swarnima@gmail.com | kalyan        | 901922293    |  400612 |       0 |       |         |
| C104        | sayli         | pune     | sayli@gmail.com    | universe      | 7894561238   |   82662 |       0 |       |         |
+-------------+---------------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)
-----------------------------------------------------------------------------------------
step 44:

 
mysql> truncate table orders;
Query OK, 0 rows affected (0.07 sec)
---------------------------------------------------------------------------------------------
step 45:


mysql>  desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_ID  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)
-----------------------------------------------------------------------------------------
step 46:


mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| Customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| Email         | varchar(20)  | NO   |     | NULL    |       |
| Address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
-----------------------------------------------------------------------------------------
step 47:


mysql>  insert into demo values('101','tejuzz');
Query OK, 1 row affected (0.01 sec)
----------------------------------------------------------------------------------
step 48:


mysql>  select * from demo;
+-----+--------+
| id  | name   |
+-----+--------+
| 101 | tejuzz |
+-----+--------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------
step 49:


mysql>  truncate table demo;
Query OK, 0 rows affected (0.06 sec)
----------------------------------------------------------------------
step 50:


mysql>  select * from demo;
Empty set (0.00 sec)
------------------------------------------------------------------------
step 51:


mysql>  desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
---------------------------------------------------------------------------------
step 52:


mysql> drop table orders;
Query OK, 0 rows affected (0.04 sec)
---------------------------------------------------------------------------------
step 53:



