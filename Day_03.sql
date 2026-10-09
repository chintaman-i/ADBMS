SHOW DATABASES;
CREATE DATABASE CompanyDB;

USE CompanyDB;
CREATE TABLE Employees( EmpID INT PRIMARY KEY, EmpName VARCHAR(30), Salary FLOAT,JoinDate DATE);
DESCRIBE Employees;

Create  TABLE Departments(DeptID Int Primary Key, DeptName VARCHAR(30));
DESCRIBE Departments;

ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);
DESCRIBE Employees;

ALTER TABLE Departments DROP COLUMN Email;

ALTER TABLE Departments ADD COLUMN dept_location VARCHAR(200);
DESCRIBE Departments;

ALTER TABLE  Employees MODIFY EmpName VARCHAR(100);
DESCRIBE Employees;

ALTER TABLE Departments DROP PRIMARY KEY;
DESCRIBE Departments;

ALTER TABLE Employees ADD COLUMN DeptID INT;


ALTER TABLE Employees ADD COLUMN DeptID INT;

ALTER TABLE Departments ADD PRIMARY KEY (DeptID);
ALTER TABLE Employees 
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (DeptID) REFERENCES Departments(DeptID);

DESCRIBE Employees;

ALTER TABLE Employees RENAME COLUMN EmpName TO EmployeeName;
DESCRIBE Employees;

ALTER TABLE Employees ADD COLUMN Age INT;
DESCRIBE Employees;
ALTER TABLE Employees 
ADD CONSTRAINT chk_salary_positive CHECK (Salary > 0),
ADD CONSTRAINT chk_minimum_age CHECK (Age >= 18);

DESCRIBE Employees;

ALTER TABLE Employees ADD COLUMN Phone INT NOT NULL;
DESCRIBE Employees;


ALTER TABLE Employees DROP COLUMN Phone;
DESCRIBE Employees;


RENAME TABLE Employees TO EmployeeDetails;
DESCRIBE EmployeeDetails;



ALTER TABLE EmployeeDetails 
DROP CONSTRAINT chk_salary_positive,
DROP CONSTRAINT chk_minimum_age;

DESCRIBE EmployeeDetails;


ALTER TABLE EmployeeDetails DROP FOREIGN KEY fk_employee_department;
Drop TABLE Departments;
Show TABLES;

Drop DATABASE CompanyDB;

show DATABASES;




