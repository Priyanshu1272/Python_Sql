create database myschool;
USE myschool;

CREATE TABLE StudentDetails (
    S_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);

INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
VALUES
    (1, 'Aryan', 'Mumbai'),
    (2, 'Neha', 'Pune'),
    (3, 'Rohit', 'Delhi'),
    (4, 'Kiran', 'Chennai'),
    (5, 'Manish', 'Jaipur');

CREATE TABLE StudentMarks (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    Marks INT,
    Age INT
);

INSERT INTO StudentMarks (ID, NAME, Marks, Age)
VALUES
    (1, 'Aryan', 92, 19),
    (2, 'Neha', 65, 20),
    (3, 'Rohit', 78, 19),
    (4, 'Kiran', 88, 21),
    (5, 'Manish', 82, 18);

--  BEFORE INSERT Trigger (Prevent Duplicate Student Name)
DELIMITER //
CREATE TRIGGER before_insert_student
BEFORE INSERT ON StudentDetails
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM StudentDetails WHERE NAME = NEW.NAME) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Duplicate Student Name Not Allowed';
    END IF;
END;
//
DELIMITER ;

-- Create StudentLog Table 
CREATE TABLE StudentLog (
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    S_ID INT,
    NAME VARCHAR(255),
    ACTION VARCHAR(50),
    TIMESTAMP DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- AFTER INSERT Trigger (Log Inserted Student)
DELIMITER //
CREATE TRIGGER after_insert_student
AFTER INSERT ON StudentDetails
FOR EACH ROW
BEGIN
    INSERT INTO StudentLog (S_ID, NAME, ACTION)
    VALUES (NEW.S_ID, NEW.NAME, 'INSERTED');
END;
//
DELIMITER ;

-- AFTER DELETE Trigger (Log Deleted Student)
DELIMITER //
CREATE TRIGGER after_delete_student
AFTER DELETE ON StudentDetails
FOR EACH ROW
BEGIN
    INSERT INTO StudentLog (S_ID, NAME, ACTION)
    VALUES (OLD.S_ID, OLD.NAME, 'DELETED');
END;
//
DELIMITER ;

INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
VALUES (6, 'Sakshi', 'Bangalore');

DELETE FROM StudentDetails WHERE S_ID = 5;

SELECT * FROM StudentLog;
