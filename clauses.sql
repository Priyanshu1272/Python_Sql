CREATE DATABASE college_dbb;
USE college_dbb;

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
('Anjali Verma', 22, 'Female', 'CSE', 2021, 'anjali.verma@gmail.com', '9876543215', 'Jaipur'),
('Vikas Yadav', 21, 'Male', 'CSE', 2022, 'vikas.yadav@gmail.com', '9876543216', 'Lucknow'),
('Neha Sharma', 20, 'Female', 'Mechanical', 2023, 'neha.sharma@gmail.com', '9876543217', 'Chandigarh'),
('Rahul Gupta', 23, 'Male', 'Civil', 2020, 'rahul.gupta@gmail.com', '9876543218', 'Hyderabad'),
('Aditi Chauhan', 19, 'Female', 'BBA', 2023, 'aditi.chauhan@gmail.com', '9876543219', 'Ahmedabad'),
('Rajat Malhotra', 22, 'Male', 'MBA', 2021, 'rajat.malhotra@gmail.com', '9876543220', 'Indore'),
('Sonali Joshi', 20, 'Female', 'CSE', 2023, 'sonali.joshi@gmail.com', '9876543221', 'Bhopal'),
('Deepak Kumar', 21, 'Male', 'Civil', 2022, 'deepak.kumar@gmail.com', '9876543222', 'Patna'),
('Sneha Kapoor', 22, 'Female', 'BBA', 2020, 'sneha.kapoor@gmail.com', '9876543223', 'Dehradun'),
('Mohit Sinha', 24, 'Male', 'MBA', 2019, 'mohit.sinha@gmail.com', '9876543224', 'Goa');

select * from student

SELECT * FROM student WHERE age > 21;

SELECT course_name, COUNT(*) AS total_students FROM student GROUP BY course_name;

SELECT course_name, COUNT(*) AS total_students 
FROM student 
GROUP BY course_name 
HAVING COUNT(*) > 2;

SELECT course_name, COUNT(*) AS total_students 
FROM student 
WHERE admission_year >= 2022 
GROUP BY course_name 
HAVING COUNT(*) > 1;

SELECT course_name, COUNT(*) AS total_students 
FROM student 
GROUP BY course_name 
HAVING COUNT(*) > 1;











