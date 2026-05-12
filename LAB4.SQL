mysql> create database joints;
Query OK, 1 row affected (0.03 sec)

mysql> use joints;
Database changed
mysql> create table department(dept_id int primary key not null, dept_name varchar(30) not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> insert into department values(1, 'HR'),(2, 'IT'), (3, 'Finanse'), (4, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finanse   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)
mysql> create table employee(emp_id int primary key not null, emp_name varchar(20) not null, dept_id int, foreign key (dept_id) references department (dept_id));
Query OK, 0 rows affected (0.08 sec)

mysql> show tables;
+------------------+
| Tables_in_joints |
+------------------+
| department       |
| employee         |
+------------------+
2 rows in set (0.01 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
mysql> insert into employee values(1, 'amit', 1),(2, 'ajay', 2),(3, 'ayush', 1),(4, 'ankit', null),(5, 'aandy', 4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | amit     |       1 |
|      2 | ajay     |       2 |
|      3 | ayush    |       1 |
|      4 | ankit    |    NULL |
|      5 | aandy    |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finanse   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.01 sec)

mysql> select emp_name, dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| amit     | HR        |
| ayush    | HR        |
| ajay     | IT        |
| aandy    | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee left join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| amit     | HR        |
| ajay     | IT        |
| ayush    | HR        |
| ankit    | NULL      |
| aandy    | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee right join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| amit     | HR        |
| ayush    | HR        |
| ajay     | IT        |
| NULL     | Finanse   |
| aandy    | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee full join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| amit     | Marketing |
| amit     | Finanse   |
| amit     | IT        |
| amit     | HR        |
| ajay     | Marketing |
| ajay     | Finanse   |
| ajay     | IT        |
| ajay     | HR        |
| ayush    | Marketing |
| ayush    | Finanse   |
| ayush    | IT        |
| ayush    | HR        |
| ankit    | Marketing |
| ankit    | Finanse   |
| ankit    | IT        |
| ankit    | HR        |
| aandy    | Marketing |
| aandy    | Finanse   |
| aandy    | IT        |
| aandy    | HR        |
+----------+-----------+
20 rows in set, 1 warning (0.00 sec)

mysql> select emp_name, dept_name from employee cross join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| amit     | Marketing |
| amit     | Finanse   |
| amit     | IT        |
| amit     | HR        |
| ajay     | Marketing |
| ajay     | Finanse   |
| ajay     | IT        |
| ajay     | HR        |
| ayush    | Marketing |
| ayush    | Finanse   |
| ayush    | IT        |
| ayush    | HR        |
| ankit    | Marketing |
| ankit    | Finanse   |
| ankit    | IT        |
| ankit    | HR        |
| aandy    | Marketing |
| aandy    | Finanse   |
| aandy    | IT        |
| aandy    | HR        |
+----------+-----------+
20 rows in set (0.00 sec)

mysql> create database store_procesure_example;
Query OK, 1 row affected (0.01 sec)

mysql> use store_procesure_example;
Database changed
mysql> create table empployee(id int primary key not null, name varchar(20) not null, salary int);
Query OK, 0 rows affected (0.05 sec)
mysql> use store_procedure_example;
Database changed
mysql> CREATE TABLE EMPLOYEE(ID INT PRIMARY KEY NOT NULL,name VARCHAR(20) NOT NULL,dept varchar(20) not null,salary int);
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| ID     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into employee values(1,'rushi','HR',10000);
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+----+-------+------+--------+
| ID | name  | dept | salary |
+----+-------+------+--------+
|  1 | rushi | HR   |  10000 |
+----+-------+------+--------+
1 row in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    -> SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> call GetEmployees();
    ->  DELIMITER //
+----+-------+------+--------+
| ID | name  | dept | salary |
+----+-------+------+--------+
|  1 | rushi | HR   |  10000 |
+----+-------+------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER' at line 1
mysql> DELIMITER ;
mysql> call GetEmployees();
+----+-------+------+--------+
| ID | name  | dept | salary |
+----+-------+------+--------+
|  1 | rushi | HR   |  10000 |
+----+-------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)
mysql>  DELIMITER //
mysql>  CREATE PROCEDURE
    -> GetEmployeeByDept(IN dept_name
    -> VARCHAR(50))
    -> BEGIN
    -> SELECT *
    -> FROM Employees
    ->  WHERE department = dept_name;
    -> END //
Query OK, 0 rows affected (0.03 sec)

mysql>  DELIMITER //
mysql> CREATE PROCEDURE
    -> GetEmployeeByDept2(IN dept_name
    -> VARCHAR(50))
    -> BEGIN
    -> SELECT *
    -> FROM Employees
    ->  WHERE department = dept;
    -> END //
Query OK, 0 rows affected (0.01 sec)
mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeByDept3(IN dept VARCHAR(50))
    ->  BEGIN
    -> SELECT *
    ->  FROM Employee
    -> WHERE department = dept;
    -> END //
Query OK, 0 rows affected (0.01 sec)