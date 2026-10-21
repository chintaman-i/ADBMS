/*Filtering data from tables
Where,select Distinct,nd,or,not ,in,between,Like,limit,is null*/

create DATABASE organization;
use organization;

CREATE TABLE employee(Empid int not NULL PRIMARY KEY,First_name VARCHAR(15),Last_name VARCHAR(15),Gender CHAR,Role VARCHAR(15),Dept VARCHAR(15),Manager_id VARCHAR(10));

Desc Employee;

INSERT into Employee VALUES(1,'Bob','Smith','M','Team LEAD','Retail','M11');
INSERT into Employee VALUES(2,'Sam','Smith','M','Hr Head','Hr','M12');
INSERT into Employee VALUES(3,'Ram','Smith','M','Developer','Development','M13');
INSERT into Employee VALUES(4,'Tom','Smith','M','Team LEAD','Retail','M13');
INSERT into Employee VALUES(5,'John','Smith','M','Tester','Testing','M15');
INSERT into Employee VALUES(6,'Ryan','Smith','M','President','',null);

Alter table employee add COLUMN Exprience int;

UPDATE Employee set Exprience=8 WHERE Empid=1;
UPDATE Employee set Exprience=17 WHERE Empid=2;
UPDATE Employee set Exprience=12 WHERE Empid=3;
UPDATE Employee set Exprience=1 WHERE Empid=4;
UPDATE Employee set Exprience=25 WHERE Empid=5;



SELECT * FROM Employee;
/*Distinct clause gets all the unique values of the the column*/
SELECT DISTINCT Dept FROM Employee ORDER BY Dept;
SELECT DISTINCT Role FROM Employee ORDER BY Role;

/*And Operator :is a a logical oprator that combines two ir more boolean expressions and reurns 1,0,NUll .the And operator is uded for filtering data with the where clause*/

SELECT * From Employee WHERE Role ='Hr Head' AND Dept='Hr';

SELECT * From Employee WHERE Role ='President' AND Dept='Hr';

/*OR operator: the Or Operator is a logical operator that combines two boolean expressions and returns 1
(true) if either of the expressions is true.
The Or Operator is used for filtering data WITH the where Clause*/

Select * FROM Employee WHERE role='Hr Head' or Role='Tester';

/*In Operator : The IN operator is uesd to detrmine if a value*/

SELECT * From employee WHERE Role in('Hr Head','Tester');

/*NOt IN operator: the NOT IN operator is formed by combining the Not and IN Operators.
The Not In operator ,in contrast to the In Operator.
Is used to detrmine if a value does not match any of the values in a list */

SELECT * From employee WHERE role not in ('Hr head','Tester');

/*Between Operator: the Between operator is a logical operator that detrmines whwther a value belongs in a range.The between operator value belongs in a 
*/

SELECT* FROM employee WHERE Exprience BETWEEN 1 and 10;

SELECT* FROM employee WHERE Exprience=1 or Exprience=8;

/*Like Operator: the Like Operator is a logical operator thet determines whether or not a string contains a specifed pattern*/

SELECT * from employee where Last_name like 'S%';

/*Limit operator :the limit clause in the SELECT statment is used to limit the number if rows returned*/

SELECT * FROM employee ORDER BY Exprience LIMIT 4;

/*Is Null operator detrimines whether or not a value is null or not*/

INSERT into employee values()