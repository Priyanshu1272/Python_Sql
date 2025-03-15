CREATE DATABASE college_dt;
USE college_dt;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    course_name VARCHAR(50),  
    admission_year YEAR,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(50),
    registration_date DATETIME DEFAULT NOW()
);

INSERT INTO students (name, age, gender, course_name, admission_year, email, phone, address, registration_date) VALUES
('Amit Sharma', 20, 'Male', 'CSE', 2023, 'amit.sharma@gmail.com', '9876543210', 'Delhi', '2023-06-15 10:30:00'),
('Priya Singh', 19, 'Female', 'Mechanical', 2022, 'priya.singh@gmail.com', '9876543211', 'Mumbai', '2022-07-20 14:45:00'),
('Rohan Verma', 21, 'Male', 'Civil', 2021, 'rohan.verma@gmail.com', '9876543212', 'Kolkata', '2021-05-10 09:15:00'),
('Sanya Kapoor', 22, 'Female', 'BBA', 2020, 'sanya.kapoor@gmail.com', '9876543213', 'Pune', '2020-08-25 16:00:00'),
('Kunal Mehta', 23, 'Male', 'MBA', 2019, 'kunal.mehta@gmail.com', '9876543214', 'Bangalore', '2019-04-05 08:00:00');

SELECT NOW() AS current_datetime;

SELECT CURDATE() AS `current_date`;

SELECT CURTIME() AS `current_time`;

SELECT name, EXTRACT(YEAR FROM registration_date) AS registration_year 
FROM students;

SELECT name, EXTRACT(MONTH FROM registration_date) AS registration_month 
FROM students;

SELECT name, EXTRACT(DAY FROM registration_date) AS registration_day 
FROM students;

SELECT name, EXTRACT(HOUR FROM registration_date) AS registration_hour 
FROM students;

SELECT name, DATEDIFF(NOW(), registration_date) AS days_since_registration 
FROM students;

SELECT name, DAYNAME(registration_date) AS registration_day 
FROM students;

SELECT name, DATE_FORMAT(registration_date, '%d-%m-%Y') AS formatted_date 
FROM students;


