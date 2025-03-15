CREATE DATABASE college_agg;
USE college_agg;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    course_name VARCHAR(50),  
    admission_year YEAR,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(50)  
);

#select * from students;


INSERT INTO students (name, age, gender, course_name, admission_year, email, phone, address) VALUES
('Amit Sharma', 20, 'Male', 'CSE', 2023, 'amit.sharma@gmail.com', '9876543210', 'Delhi'),
('Priya Singh', 19, 'Female', 'Mechanical', 2022, 'priya.singh@gmail.com', '9876543211', 'Mumbai'),
('Rohan Verma', 21, 'Male', 'Civil', 2021, 'rohan.verma@gmail.com', '9876543212', 'Kolkata'),
('Sanya Kapoor', 22, 'Female', 'BBA', 2020, 'sanya.kapoor@gmail.com', '9876543213', 'Pune'),
('Kunal Mehta', 23, 'Male', 'MBA', 2019, 'kunal.mehta@gmail.com', '9876543214', 'Bangalore');

SELECT COUNT(*) AS total_students FROM students;

SELECT AVG(age) AS average_age FROM students;

SELECT SUM(age) AS total_age FROM students;

SELECT MIN(age) AS youngest_student FROM students;

SELECT MIN(admission_year) AS earliest_admission_year 
FROM students;

SELECT MAX(age) AS oldest_student FROM students;

SELECT MAX(admission_year) AS latest_admission_year 
FROM students;




