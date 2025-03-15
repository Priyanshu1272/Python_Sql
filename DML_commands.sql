CREATE DATABASE college_dml;
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

INSERT INTO students (name, age, gender, course_name, admission_year, email, phone, address) VALUES
('Amit Sharma', 20, 'Male', 'CSE', 2023, 'amit.sharma@gmail.com', '9876543210', 'Delhi'),
('Priya Singh', 19, 'Female', 'Mechanical', 2022, 'priya.singh@gmail.com', '9876543211', 'Mumbai'),
('Rohan Verma', 21, 'Male', 'Civil', 2021, 'rohan.verma@gmail.com', '9876543212', 'Kolkata'),
('Sanya Kapoor', 22, 'Female', 'BBA', 2020, 'sanya.kapoor@gmail.com', '9876543213', 'Pune'),
('Kunal Mehta', 23, 'Male', 'MBA', 2019, 'kunal.mehta@gmail.com', '9876543214', 'Bangalore');

INSERT INTO students (name, age, gender, course_name, admission_year, email, phone, address) 
VALUES ('Rahul Gupta', 21, 'Male', 'IT', 2023, 'rahul.gupta@gmail.com', '9876543215', 'Chennai');

UPDATE students 
SET course_name = 'Data Science' 
WHERE name = 'Amit Sharma';

UPDATE students 
SET phone = '9876543220' 
WHERE email = 'sanya.kapoor@gmail.com';

DELETE FROM students 
WHERE name = 'Kunal Mehta';

DELETE FROM students 
WHERE admission_year < 2021;

SELECT * FROM students;
SELECT name, age, email FROM students 
WHERE course_name = 'IT';






