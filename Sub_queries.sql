CREATE DATABASE Company_sub;
USE Company_sub;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, department, salary) VALUES 
('Amit Sharma', 'IT', 70000),
('Neha Verma', 'HR', 60000),
('Rajesh Kumar', 'Finance', 75000),
('Sonia Mehta', 'IT', 72000),
('Rohit Das', 'Finance', 67000),
('Priya Singh', 'HR', 62000),
('Vikas Rathi', 'IT', 73000);

SELECT name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT name, salary 
FROM employees 
WHERE salary < (SELECT AVG(salary) FROM employees);

SELECT name, department 
FROM employees 
WHERE department = (SELECT department FROM employees WHERE name = 'Sonia Mehta');

SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees)