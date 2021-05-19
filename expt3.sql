(i)//add 5 rows in the employee and dept tables
insert into department(dept_no,dept_name)
values
(1,"akhil"),
(2,"sindu"),
(3,"ann"),
(4,"lily"),
(5,"tony");
insert into employee(emp_no,emp_name,DOB,address,mobile_no,salary,designation)
values
(1,"akhil","31-03-1999","akhilism",9857,12000,"A"),
(2,"sindu","4-09-1998","sindvila",6789,14000,"A"),
(3,"ann","6-07-1990","annila",5467,6000,"C"),
(4,"lily","5-02-1997","nest",5674,7000,"C"),
(5,"tony","8-08-1998","tony vila",2455,10000,"B");
(ii)//display all the records from the above tables
select* from employee;
select* from department;
(iii)//display the empno and name of all employees from department 2
SELECT emp_no,emp_name FROM employee where dept_no=2;
(iv)//display the empno,name,designation ,deptno and salary from department no2
SELECT emp_no,emp_name,designation,dept_no,salary where dept_no=2;
(v)//display the empno and name of all employees whose salary between 2000 and 5000
SELECT emp_no,emp_name,salary from employee where salary between 2000 and 5000;
(vi)//display all designations without duplicate values
SELECT distinct designation from employee ;
(vii)//display  the dept name and total salary of employees of each department
SELECT dept_name,sum(salary) as total from employee group by dept ;
(viii)//change the salary of employees to 25000 whose designation is 'typist'
UPDATE employee SET salary=25000 WHERE designation="typist";
(ix)//change the mobile number of employee named 'john'
UPDATE employee SET mobile_no=980833084 WHERE emp_name="john";
(x)//delete all employees whose salaries are equal to Rs.7000
DELETE FROM employee
WHERE salary = 7000;
(xi)//select the department that has total salary paid for its employess more than 25000
SELECT dept, SUM (salary)
FROM employee
GROUP BY dept
HAVING SUM (salary) > 25000

 