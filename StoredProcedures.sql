CREATE DATABASE student_class;
USE student_class;

CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(20),
    last_name VARCHAR(30),
    class VARCHAR(20)
);

INSERT INTO students (rollno, name, last_name, class) VALUES
(1, 'Aarav', 'Sharma', '2nd'),
(2, 'Priya', 'Verma', '3rd'),
(3, 'Rohan', 'Malhotra', '3rd'),
(4, 'Neha', 'Gupta', '2nd');


DELIMITER $$
CREATE PROCEDURE select_student_names(IN f_name VARCHAR(20), IN l_name VARCHAR(30))
BEGIN
	SELECT * FROM students
	WHERE name = f_name AND last_name = l_name;
END $$
DELIMITER ;

CALL select_student_names('Rohan', 'Malhotra');
DELIMITER $$
CREATE PROCEDURE view_all_students()
BEGIN
	SELECT * FROM students;
END $$
DELIMITER ; 

CALL view_all_students();

DELIMITER $$
CREATE procedure get_student_id(IN id INT)
BEGIN
	SELECT * FROM students
    WHERE rollno = id;
END $$
DELIMITER ;

CALL get_student_id(2);