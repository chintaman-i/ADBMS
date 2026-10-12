/*TCL COMMIT,ROLLBACK,SAVEPOINT,ROLLBACK to SAVEPOINT
AUTO COMMIT- sucessful transactions are automatically commited,we have to set auto COMMIT=0 to turnoff the auto commit enabled
We cannot disable the auto commit mode we are using this
DDL commands*/

CREATE DATABASE TCL;

USE TCL;

CREATE TABLE orders(order_id int PRIMARY KEY,customer_name VARCHAR(100),Status VARCHAR(50));

DESC orders;
-- COMMIT,ROLLBACK
SET autocommit=0;
BEGIN;
INSERT into orders VALUES(101,'sam','pending');
INSERT into orders VALUES(102,'bob','pending');

UPDATE orders set customer_name ='Raj'where order_id=102;

UPDATE orders set customer_name ='raj'where order_id=102;
SELECT *from orders;
COMMIT;
ROLLBACK;

-- SAVEPOINT
INSERT INTO orders VALUES(103,'ram','pending');
INSERT INTO orders VALUES(104,'om','pending');

SAVEPOINT sp1;
SELECT *from orders;

UPDATE orders SET status ='Shipped' WHERE order_id=103;
SAVEPOINT sp2;

ROLLBACK to SAVEPOINT sp2;
SELECT *from orders;

DELETE FROM orders WHERE order_id=102;
SAVEPOINT sp3;

ROLLBACK to SAVEPOINT sp2;
SELECT*from orders;
ROLLBACK;

show DATABASES;
INSERT INTO orders VALUES(105,'John','shipped');




