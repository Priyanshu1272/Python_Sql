CREATE DATABASE Company_db;
USE Company_db;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT  
);


INSERT INTO Employee (emp_id, emp_name, manager_id) VALUES
(1, 'Shivam', NULL),     
(2, 'Rajiv', 1),            
(3, 'Vishal', 1),      
(4, 'Jatin', 2),         
(5, 'Rahul', 2);           

SELECT e1.emp_name AS Employee, e2.emp_name AS Manager
FROM Employee e1
LEFT JOIN Employee e2 ON e1.manager_id = e2.emp_id;
