
MariaDB [(none)]> use expt4;
Database changed
MariaDB [expt4]> show tables;
+-----------------+
| Tables_in_expt4 |
+-----------------+
| department      |
|                 |
| employee        |
+-----------------+
3 rows in set (0.002 sec)
MariaDB [expt4]> select * from employee;
+----+------+---------+--------+-------+-----+
| id | name | superid | salary | bdate | dno |
+----+------+---------+--------+-------+-----+
|  1 | john |       3 | 100000 | 1958  |   1 |
|  2 | mary |       3 |  50000 | 1951  |   3 |
|  3 | bob  |    NULL |  80000 | 1965  |   3 |
|  4 | tom  |       1 |  50000 | 1960  |   2 |
|  5 | bill |    NULL |   NULL | 1964  |   1 |
+----+------+---------+--------+-------+-----+
5 rows in set (0.001 sec)

MariaDB [expt4]> select * from department;

+---------+-------------+
| dnumber | dname       |
+---------+-------------+
|       1 | payroll     |
|       2 | techsupport |
|       3 | research    |
+---------+-------------+
3 rows in set (0.001 sec)
MariaDB [expt4]> create deptsal as
    -> select dnumber,0 as totalsalary from department;
+---------+-------------+
| dnumber | totalsalary |
+---------+-------------+
|       1 |           0 |
|       2 |           0 |
|       3 |           0 |
+---------+-------------+
3 rows in set (0.001 sec)
...' at line 1
MariaDB [expt4]> delimiter//
    -> create procedure updatesalary (IN param1 int)
    -> begin
    ->      update deptsal
    ->      set totalsalary = (select sum(salary) from employee where dno = param1)
    ->     where dnumber = param1;
    -> end;//
Query OK, 0 rows affected (1.37 sec)
MariaDB [expt4]> delimiter ;
MariaDB [expt4]> call updatesalary(1);
Query OK, 0 rows affected (0.00 sec)
MariaDB [expt4]> call updatesalary(2);
Query OK, 1 row affected (0.22 sec)

MariaDB [expt4]> call updatesalary(3);
Query OK, 1 row affected (0.20 sec)



MariaDB [expt4]> select * from deptsal;
+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
| 1       |      100000 |
| 2       |       50000 |
| 3       |       13000 |
+---------+-------------+
5 rows in set (0.00 sec)
show procedure status;
MariaDB [expt4]> drop procedure updatesalary;
Query OK, 0 rows affected (0.02sec)
