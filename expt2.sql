(i)//create database
create database organisation;
(ii)//select the current database
use organisation;
(iii)&(iv)//create the following tables with necessary constaints
 a.employee table
create table employee(
emp_no int not null,
emp_name varchar(45) not null,
DOB varchar(50) not null,
address varchar(50) not null,
mobile_no int not null,
salary int not null);
b.department table
create table department(
dept_no int not null,
dept_name varchar(45) not null,
location varchar(50) not null);
(v)//list all the tables in the current database
use organisation;
show tables;
(vi)//display the structure of employee table
desc table employee;
(vii)//add a new column desgination to the employee table
alter table employee
add designation varchar(50) not null;
(viii)//drop the column location from department table
alter table department
drop location;
(ix)//drop the tables
drop table employee;
drop table department;
(x)//delete the database
drop database organisation
