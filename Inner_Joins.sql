CREATE DATABASE University_dbb;
USE University_dbb;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO Student (student_id,name) VALUES
(101, 'Rajiv Sharma'),
(102, 'varun tyagi'),
(103, 'adarsh verma');

CREATE TABLE Course (
    student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO Course (student_id,course) VALUES
(102, 'Java'),
(105, 'SQL'),
(103, 'Python'),
(107,'PowerBi');

SELECT Student.student_id, Student.name, Course.course
FROM Student
INNER JOIN Course ON Student.student_id = Course.student_id;





