CREATE DATABASE college_dcl;
USE college_dcl;

CREATE TABLE student (
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

INSERT INTO student (name, age, gender, course_name, admission_year, email, phone, address) VALUES
('Amit Sharma', 20, 'Male', 'CSE', 2023, 'amit.sharma@gmail.com', '9876543210', 'Delhi'),
('Priya Singh', 19, 'Female', 'Mechanical', 2022, 'priya.singh@gmail.com', '9876543211', 'Mumbai'),
('Rohan Verma', 21, 'Male', 'Civil', 2021, 'rohan.verma@gmail.com', '9876543212', 'Kolkata'),
('Sanya Kapoor', 22, 'Female', 'BBA', 2020, 'sanya.kapoor@gmail.com', '9876543213', 'Pune'),
('Kunal Mehta', 23, 'Male', 'MBA', 2019, 'kunal.mehta@gmail.com', '9876543214', 'Bangalore');

GRANT select, insert, update, delete ON college_dcl.student TO 'Admin'@'localhost';

show grants for 'Admin'@'localhost';

SELECT user, host FROM mysql.user WHERE user = 'Admin';

REVOKE Insert, select, update, delete ON college_dcl.student FROM 'Admin'@'localhost';


