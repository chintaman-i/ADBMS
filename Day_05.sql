CREATE DATABASE User;
show DATABASES;
use User;

 CREATE TABLE customer(custid int,custname VARCHAR(15),City VARCHAR(10),product VARCHAR(15),Price int);

 INSERT INTO customer VALUES(101,'Sam','pune','tea',150);
 INSERT INTO customer VALUES(102,'ram','Mumbai','cofee',150);
 INSERT INTO customer VALUES(103,'sham','pune','tea',150);

select * from customer;

ALTER TABLE customer ADD PRIMARY KEY(custid);
DESCRIBE customer;

SELECT custid,custname,city from customer;

SELECT * FROM customer WHERE custid=101 or custid=102;

SELECT * from customer WHERE custid IN(102,103);
--clone Table
create table CLoneTable as select*from customer;
select * from CloneTable;
DROP TABLE CloneTable;


select custname,city from customer;

select custname,city from customer where custid=101;

SELECT custname,product from customer where Price<200;

SELECT * FROM customer WHERE custid=101;

SELECT * FROM customer WHERE City='Pune';

/* Sorting data using order by single column*/

 INSERT INTO customer VALUES(104,'bob','pune','cofee',15);
 INSERT INTO customer VALUES(105,'manas','pune','tea',1500);


SELECT * FROM customer ORDER BY Price;

SELECT * from customer ORDER BY Price desc;

SELECT * FROM customer ORDER BY City,Price;

SELECT * FROM customer ORDER BY Price,City;









