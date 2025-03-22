CREATE database College_Exc;
USE College_Exc;

CREATE TABLE students(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);

INSERT INTO students
(rollno, name, marks, grade, city)
VALUES
(201, "Rahul", 82, "B", "Bangalore"),
(202, "Sneha", 91, "A", "Mumbai"),
(203, "Aryan", 76, "C", "Kolkata"),
(204, "Neha", 65, "D", "Jaipur"),
(205, "Varun", 58, "F", "Hyderabad");

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_rollno INT, 
    IN p_name VARCHAR(50), 
    IN p_marks INT, 
    IN p_grade VARCHAR(1), 
    IN p_city VARCHAR(20)
)
BEGIN
    -- Declare error handler for duplicate roll number
    DECLARE EXIT HANDLER FOR 1062 
    BEGIN
        SELECT 'Error: Duplicate roll number!' AS Message;
    END;

    INSERT INTO students (rollno, name, marks, grade, city) 
    VALUES (p_rollno, p_name, p_marks, p_grade, p_city);

    SELECT 'Student Inserted Successfully!' AS Message;

END //

DELIMITER ;

SELECT * FROM students;

CALL InsertStudent(206, 'Priya', 87, 'B', 'Chennai');
CALL InsertStudent(206, 'Kunal', 72, 'C', 'Pune');
