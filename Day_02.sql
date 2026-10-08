SHOW DATABASES;
USE college;
DESCRIBE emp;
create table emp(EmpId int,fname varchar(20),lname varchar(30),EmpAge int,Empzone varchar(10));
INSERT into emp(EmpID,fname,lname,EmpAge,Empzone)VALUES(101,'Ratan','kumar',20,'North'),(102,'amit','shah',20,'west'),(103,'rahul','gandhi',20,'east'),(104,'Ratan','singh',20,null);
INSERT into emp(EmpID,fname,lname,EmpAge,Empzone)VALUES(104,'rahul','gandhi',20,NULL);
show TABLES
UPDATE emp SET Empzone='North' WHERE EmpId=104;
DELETE FROM emp WHERE EmpId=104;
SELECT EmpId,fname FROM emp;
TRUNCATE emp;


----
CREATE DATABASE company_db;
USE company_db;
create table emp(EmpId int NOT NULL,fname varchar(20),lname varchar(30),EmpAge int);
 DESC emp;


INSERT INTO emp VALUES(null,'sam','smith',30);

INSERT INTO emp VALUES(101,null,'smith',30);

SELECT * FROM emp3;

create table emp3(EmpId int NOT NULL,fname varchar(20),lname varchar(30),unique(EmpId));

INSERT INTO emp3 VALUES(101,'sam','smith');

SHOW TABLES;

-- check constraint

create table emp4(EmpId int NOT NULL,fname varchar(20),lname varchar(30),EmpAge int,Check(EmpAge>20));

INSERT INTO emp4 VALUES(101,'sam','smith',21);

ALTER TABLE emp3 Add COLUMN salary int CHECK(salary>=5000);

ALTER TABLE emp drop salary;
DESC emp3;

INSERT INTO emp3 VALUES(102,'sam','smith',40500);

INSERT INTO emp3 VALUES(101,'sam','smith',45000);


SHOW CREATE TABLE emp3;
SELECT * FROM emp3;

ALTER TABLE emp3 DROP CHECK emp3_chk_1;

INSERT INTO emp3 VALUES(104,'sam','smith',500);










