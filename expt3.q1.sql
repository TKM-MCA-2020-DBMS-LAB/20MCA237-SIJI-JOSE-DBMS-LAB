-------COLLEGE DATABASE----------
//(i) Insert at least 5 tuples into each table.

-----COURSE-------
insert into course( cid, cname, credits, dno)
values
(1, 'anu', 4, 1),
(2, 'sinu',6,  2),
(3, 'hari', 5, 1),
(4, 'fati', 4, 1),
(5, 'dora', 5, 2);
------DEPARTMENT-----
insert into department(dno,dname)
values
(1,'cs'),
(2,'mca'),
(3,'btech'),
(4,'mtech'),
(5,'ug');
------FACULTY-------
insert into faculty(F_id, fname, designation, salary, dno)
values
(1,"mini","tr",34000,1),
(2,"maya","tr",35000,2),
(3,"rekha","st",23000,2),
(4,"ann","tr",40000,1),
(5,"gouri","st",25000,3);
-------HOSTEL--------
insert into hostel(hid,hname,seats)
values
(1,"mini",5),
(2,"sini",9),
(3,"lily",8),
(4,"jack",5),
(5,"rose",3);
-------REGISTER------
insert into register(sid,cid,sem)
values
(1,5,1),
(2,9,3),
(3,8,4),
(4,5,3),
(5,3,2);
------STUDENT------
insert into student(sid, sname, sex, dob, grade)
values
(1,"ali","m",1/10/1999,"A"),
(2,"beena","f",2/4/1998,"B"),
(3,"santi","m",9/9/1999,"A"),
(4,"ria","f",8/8/1990,"B"),
(5,"mouni","f",13/6/2000,"C");
------TEACHING--------
insert into teaching(f_id,cid,sem)
values
(1,5,1),
(2,9,3),
(3,8,4),
(4,5,3),
(5,3,2);

//(ii) List the details of students in the ascending order of date of birth

SELECT dob 
FROM student
order by dob ASC;

//(iii)	Display the details of students from computer department

SELECT *
FROM department
where dname="mca";

//(iv) List the faculties in the descending order of salary

SELECT salary 
FROM faculty
order by salary DESC;

//(v) Display the total number of students in each department

SELECT COUNT(*)
FROM student
GROUP BY department;

//(vi) Display the total number of faculties in each department with salary greater than 25000

SELECT dept,SUM(salary)
FROM faculty
GROUP BY dept
HAVING SUM (salary) > 25000


 
