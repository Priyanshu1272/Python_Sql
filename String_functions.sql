CREATE DATABASE college;
USE college;

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

SELECT name, UPPER(name) AS upper_name FROM students;

SELECT name, LOWER(name) AS lower_name FROM students;

SELECT name, LENGTH(name) AS name_length FROM students;

SELECT name, course_name, CONCAT(name, ' - ', course_name) AS student_details FROM students;

SELECT name, SUBSTRING(name, 1, 3) AS short_name FROM students;

SELECT course_name, REPLACE(course_name, 'IT', 'Information technology') AS updated_course FROM students;

SELECT email, LEFT(email, 5) AS email_start FROM students;

SELECT phone, RIGHT(phone, 5) AS last_five_digits FROM students;

SELECT email, LOCATE('@', email) AS at_position FROM students;

SELECT address, TRIM(address) AS trimmed_address FROM students;






