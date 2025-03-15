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

ALTER TABLE students ADD dob DATE;
ALTER TABLE students MODIFY address VARCHAR(150);
ALTER TABLE students CHANGE phone contact_number VARCHAR(15);
ALTER TABLE students DROP COLUMN dob;

RENAME TABLE students TO college_students;

TRUNCATE TABLE college_students;

DROP TABLE college_students;

select * from college_students;



