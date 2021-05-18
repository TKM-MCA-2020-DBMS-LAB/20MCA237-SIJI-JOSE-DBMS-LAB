(i)&(ii)//create tables with necessary constraints
.........STUDENT........
create table Student(
sid int not null,
sname varchar(45) not null,
sex varchar(1) not null,
dob int not null);
.........DEPARTMENT.......
create table Department(
dno int not null,
dname varchar(45) not null);
.........FACULTY.........
create table Faculty(
F_id int not null,
fname varchar(45) not null,
designation varchar(45) not null,
salary int not null,
dno int not null);

.........COURSE...........
create table Course(
cid int not null,
cname varchar(45) not null,
credits int not null,
dno int not null);
.........REGISTER........
create table Register(
sid int not null,
cid varchar(45) not null,
sem int not null);

........TEACHING........
create table Teaching(
f_id int not null,
cid varchar(45) not null,
sem int not null);

........HOSTEL........
create table Hostel(
hid int not null,
hname varchar(45) not null,
seats int not null);
(iii)//create a database college
create database college;
(iv)//use college as the current database
use  college;
(v)//display the tables in college database
use college;
show tables;
(vi)//describe the structure of all tables
desc course;
desc department;
desc faculty;
desc hostel;
desc register;
desc student;
desc teaching;
(vii)//modify the student table to add a new field 'grade'
alter table student
add grade varchar(10);
