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

INSERT INTO employee VALUES(107, 'Amit');
INSERT INTO projects VALUES(5, 'Project A', 103), (6, 'Project E', 107);


UPDATE projects SET employee_id = 101 WHERE project_id = 3;

/*Inner Join :only takes common from both the tables*/

SELECT * FROM employee JOIN projects ON employee.employee_id = projects.employee_id;

/*Fetch the Employee name and the project name they belong to*/

SELECT e.ename, p.pname FROM employee e INNER JOIN projects p ON e.employee_id = p.employee_id;

/*Right Join/*Right join= inner Join + any additionla records in the Right   TABLE*/

SELECT e.ename, p.pname FROM employee e RIGHT JOIN projects p ON e.employee_id = p.employee_id;

/*LEFT JOIN*//*Left join= inner Join + any additionla records in the left TABLE*/
SELECT e.employee_id, e.ename,p.pname FROM employee e LEFT JOIN projects p ON e.employee_id = p.employee_id;

/*Full Outer Join*//*Displaying all the matching and non matching data from both he tables*/

SELECT * FROM employee LEFT Join projects on employee.employee_id=projects.employee_id UNION
 SELECT * FROM employee RIGHT JOIN projects ON employee.employee_id= projects.employee_id;

