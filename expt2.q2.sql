(i)&(ii)//create the following table with necessary constraints
............CUSTOMER.........
create table Customer(
cid int not null,
cname varchar(45) not null,
loc varchar(45) not null,
sex varchar(1) not null,
dob int not null);
..........BANK_BRN...........
create table Bank_brn(
bcode int not null,
bloc varchar(45) not null,
bsate varchar(20) not null);
.........DEPOSIT...........
create table Deposit(
Dacno int not null,
dtype varchar(45) not null,
ddate varchar(20) not null,
damt int not null);
...........LOAN..............
create table Loan(
Lacno int not null,
Ltype varchar(45) not null,
Ldate varchar(20) not null,
Lamt int not null);
........ACCOUNTS_IN..........
create table Account_in(
Bcode int not null,
cid int not null);
........DEPOSITOR...........
create table Depositor(
cid int not null,
dacno int not null);
........BORROWER............
create table Borrower(
cid int not null,
lacno int not null);
(iii)//create a database 'bank'
create database bank;
(iv)//display all the tables in bank database
show tables;
(v)//describe the structure of all tables
desc bank_brn;
desc borrower;
desc customer;
desc deposit;
desc depositor;
desc loan;
(vi)//delete tables
drop tables;

