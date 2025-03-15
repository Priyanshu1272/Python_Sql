CREATE DATABASE SchoolDB;
USE SchoolDB;

#Creating table in database
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    city VARCHAR(50),
    state VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL
);

show grants for 'Admin'@'localhost';
grant select, insert, delete, update on company.employees to 'Admin'@'localhost';

#Inserting data in table
INSERT INTO students (name, age, gender, city, state, email) VALUES
('Aarav Sharma', 20, 'Male', 'Delhi', 'Delhi', 'aarav.sharma@gmail.com'),
('Sneha Verma', 21, 'Female', 'Mumbai', 'Maharashtra', 'sneha.verma@gmail.com'),
('Rohan Gupta', 22, 'Male', 'Lucknow', 'Uttar Pradesh', 'rohan.gupta@gmail.com'),
('Pooja Nair', 19, 'Female', 'Bangalore', 'Karnataka', 'pooja.nair@egmail.com'),
('Vikram Singh', 23, 'Male', 'Jaipur', 'Rajasthan', 'vikram.singh@gmail.com');

#Reading data from table
SELECT * FROM students;
SELECT * FROM students where age>20;

#Updating data in table
UPDATE students 
SET city = 'Pune' 
WHERE name = 'Sneha Verma';

#Deleting data from table
DELETE FROM students WHERE name = 'Rohan Gupta';

SELECT * FROM students;


