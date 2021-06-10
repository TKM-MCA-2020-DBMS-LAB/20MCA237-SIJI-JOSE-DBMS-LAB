MariaDB [(none)]> create database demo;
Query OK, 1 row affected (0.005 sec)

MariaDB [demo]> create table viewdemo
    -> (
    -> Id int,
    -> Name varchar(200),
    -> Age int
    -> );
Query OK, 0 rows affected (0.300 sec)

MariaDB [demo]> insert into viewdemo values(1,'john',23);
Query OK, 1 row affected (0.043 sec)

MariaDB [demo]> insert into viewdemo values(2,'sam',24);
Query OK, 1 row affected (0.043 sec)

MariaDB [demo]> select * from viewdemo;
+------+------+------+
| Id   | Name | Age  |
+------+------+------+
|    1 | john |   23 |
|    2 | sam  |   24 |
+------+------+------+
2 rows in set (0.001 sec)

MariaDB [demo]> create function searchRecord(yourId int) returns char(100)
    -> begin
    -> declare Name1 char(100) default "No Name Found For This Id";
    -> select Name into Name1 from ViewDemo where Id =yourId;
    -> return Name1;
    -> end //
Query OK, 0 rows affected (0.21 sec)
Query OK, 0 rows affected (0.33 sec)
MariaDB [demo]> delimiter ;

MariaDB [demo]> select searchRecord(2) as Found;
+-------+
| Found |
+-------+
| Sam   |
+-------+
1 row in set (0.00 sec)

MariaDB [demo]> select searchRecord(100) as Found;
+---------------------------+
| Found                     |
+---------------------------+
| No Name Found For This Id |
+---------------------------+
1 row in set (0.00 sec)