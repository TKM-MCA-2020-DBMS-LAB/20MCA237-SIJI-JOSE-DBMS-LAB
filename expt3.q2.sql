--------BANK DB----------
//(i) Insert at least 5 tuples in each table
---------bank_brn----------
insert into bank_brn(bcode,bloc,bsate)
values
(1,"delhi","hariyana"),
(2,"kollam","kerala"),
(3,"chennai","tamil nadu"),
(4,"idukki","kerala"),
(5,"jaipur","uttarakhand");

-------customer-------
insert into customer(cid,cname,loc,sex,dob)

values
(1,"anu","delhi","f",31-01-2000),
(2,"rekha","kerala","f",-09-1999),
(3,"charu","tamil nadu","f",7-7-2003),
(4,"arun","kerala","m",8-8-2008),
(5,"jai","uttarakhand","m",7-6-1998);

------------borrower--------
insert into borrower(cid,lacno)
values
(1,11),
(2,22),
(3,33),
(4,44),
(5,55);

//(ii) Display the branch details

SELECT * FROM bank_brn;

//(iii) List the customers of ‘Mumbai’ city

 SELECT cname  FROM customer 
 WHERE loc="mumbai";

//(iv) List the male customers of ‘Kolkata’city

 SELECT cname FROM customer
 WHERE sex="m" AND loc="kolkata";

//(v) List the state having more than one branch.

SELECT bsate FROM bank_brn
WHERE bno>1;

//(vi) List the deposit schemes provided by the bank to the customers

SELECT dscheme,customer FROM deposit 
GROUP BY customer;


(vii) Delete the entire content of any table

//DROP customer;
 
