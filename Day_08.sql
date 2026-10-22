/*JOINS*/
SHOW DATABASES;
CREATE DATABASE basicjoin;
USE basicjoin;

CREATE TABLE employee(employee_id INT PRIMARY KEY,ename VARCHAR(50));
DESC employee;
INSERT INTO employee VALUES(101,'Rajiv');
INSERT INTO employee VALUES(102,'Sneha');
INSERT INTO employee VALUES(103,'Rohan');
INSERT INTO employee VALUES(104,'Bob');

SELECT * FROM employee;
CREATE TABLE projects(project_id INT PRIMARY KEY,pname VARCHAR(50),employee_id INT,Foreign KEY (employee_id) REFERENCES employee(employee_id));
INSERT INTO projects(project_id,pname,employee_id) VALUES(1,'Project A',101),(2,'Project B',102),(3,'Project C',103),(4,'Project D',104);
SELECT* FROM Projects;

INSERT INTO employee VALUES(105,'sanjay'),(106,'Rahul');

UPDATE projects SET employee_id = 101 WHERE project_id = 3;

/*Inner Join :only takes common from both the tables*/

SELECT * FROM employee JOIN projects ON employee.employee_id = projects.employee_id;

/*Fetch the Employee name and the project name they belong to*/

SELECT e.ename, p.pname FROM employee e INNER JOIN projects p ON e.employee_id = p.employee_id;
