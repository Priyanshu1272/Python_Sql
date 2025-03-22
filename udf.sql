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

-- Creating Function
CREATE FUNCTION get_ful_name(roll INT) RETURNS VARCHAR(51)
DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(51);
    SELECT CONCAT(name, ' ', last_name) INTO full_name FROM students WHERE rollno = roll;
    RETURN full_name;
END $$

CREATE PROCEDURE get_student_details(IN id INT)
BEGIN
    DECLARE student_name VARCHAR(51);
    -- Call the function separately and store the value
    SET student_name = get_ful_name(id);
    
    -- Fetch the rollno and class separately, while using the function for full name
    SELECT rollno, get_ful_name(id) AS full_name, class 
    FROM students WHERE rollno = id;
END $$

DELIMITER ;

-- Calling the procedure
CALL get_student_details(3);
