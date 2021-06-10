MariaDB [(none)]> use depart;
Database changed
MariaDB [depart]> SELECT * FROM employee;
+---------+------------+--------------+---------------+
| name    | occupation | working_date | working_hours |
+---------+------------+--------------+---------------+
| Robin   | Scientist  | 2020-10-04   | 12            |
| Warner  | Engineer   | 2020-10-04   | 10            |
| Peter   | Actor      | 2020-10-04   | 13            |
| Marco   | Doctor     | 2020-10-04   | 14            |
| Brayden | Teacher    | 2020-10-04   | 12            |
| Antonio | Business   | 2020-10-04   | 11            |
+---------+------------+--------------+---------------+
6 rows in set (0.001 sec)

MariaDB [depart]> DELIMITER |;
    -> Create Trigger before_insert_empworkinghours
    -> BEFORE INSERT ON employee FOR EACH ROW
    -> BEGIN
    -> IF NEW.working_hours < 0 THEN SET NEW.working_hours = 0;
    -> END IF;
    -> END |;
Query OK, 0 rows affected(0.125sec)

MariaDB [depart]>INSERT INTO employee VALUES    
	('Markus', 'Former', '2020-10-08', 14);
Query OK, 0 rows affected(0.047sec)

MariaDB [depart]>INSERT INTO employee VALUES    
	('Alexander', 'Actor', '2020-10-012', -13);  
Query OK, 0 rows affected(0.078sec)

MariaDB [depart]> select * from employee;
+-----------+------------+--------------+---------------+
| name      | occupation | working_date | working_hours |
+-----------+------------+--------------+---------------+
| Robin     | Scientist  | 2020-10-04   | 12            |
| Warner    | Engineer   | 2020-10-04   | 10            |
| Peter     | Actor      | 2020-10-04   | 13            |
| Marco     | Doctor     | 2020-10-04   | 14            |
| Brayden   | Teacher    | 2020-10-04   | 12            |
| Antonio   | Business   | 2020-10-04   | 11            |
| Markus    | Former     | 2020-10-08   | 14            |
| Alexander | Actor      | 2020-10-12   | 0             |
+-----------+------------+--------------+---------------+
8 rows in set (0.001 sec)

