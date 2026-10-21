/*Aggrergate Functions*/
/*Count,SUM,AVG,MIN,MAX*/
/*Only for integer or numbered data*/

show DATABASES;
use organization;
DESC employee;
SELECT * from employee;
/*Count*/
select COUNT(Empid) FROM employee WHERE dept='HR';

/*MIN*/
SELECT MIN(exprience) FROM employee;

/*MAX*/
SELECT MAX(exprience) FROM employee;

/*SUM*/
SELECT SUM(exprience) FROM employee;

/*AVG*/
SELECT AVG(exprience) as emp_expr FROM employee;

SELECT * FROM employee;


/*GROUP BY clause :- GROUP BY clause divides a set of rows into subgroups depending on cloumn or expression values.
The GROUP BY clause is used with aggregate functions such as Count,SUM,AVG,MIN,MAX*/

-- Find The Dept wise employee Count

SELECT Dept,COUNT(*) as employee_count
FROM employee GROUP BY Dept;
-- Role Wise Employee Count
SELECT Role,COUNT(*) as employee_count
FROM employee GROUP BY Role;

-- Gender wise Employee Count   
 SELECT Gender,COUNT(*) as employee_count
FROM employee GROUP BY Gender;


/*HAVING CLAUSE:- Each group produced by he GROUP BY CLause is Evaluated by the HAVING Clause was add to sql
 because the WHERE Keyword cannot be used with aggregate Functions*/

 SELECT Dept,SUM(exprience) as total_Experience
 FROM employee GROUP BY DEPT
 HAVING Total_Experience >=10 AND Total_experience<=20;
 -- o/p HR-17,Developent =12

/**/
 SELECT Role,SUM(Role) as Total_experience
 FROM employee GROUP BY DEPT
 HAVING Total_Experience >=10 AND Total_experience<=20;


 /*Fetch Dept wise Emplouee count using having clause and sort the date*/

SELECT Dept,COUNT(Empid)
FROM employee
GROUP BY Dept
Having COUNT(Empid) >=2
ORDER BY Count(Empid)desc;



SELECT Deot,SUM(exprience) as total_exp FROM employee GROUP BY Dept 
HAVING toal exprience >=10 or total_exprience <=30;