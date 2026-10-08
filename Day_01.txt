Create database Institute;
show databases

use Institute;
Create table Staff(staff_id int,first_name varchar(10),
last_name varchar(10), DOB date, dept_id int);
alter table staff add Location varchar(15);
alter table staff add Joining_year int;
alter table staff add age int, add contact_no int(10);
alter table staff modify first_name text;
alter table staff add primary key(staff_id);


create table Department(dept_id int, dept_name varchar(10), 
dept_location varchar(15));
alter table department add primary key(dept_id);
alter table department drop primary key;

desc staff;

alter table staff drop column contact_no;
alter table staff modify Location varchar(50);


alter table staff add foreign key(dept_id)
references department(dept_id);

desc department;
/*Syntax: Create table tablename