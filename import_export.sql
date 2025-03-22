use student_class;
select * from students;

-- import table data into csv file  
SELECT * FROM students
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/students.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE 'secure_file_priv';


-- export data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/students_export.csv'
INTO TABLE students
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
drop table students;
select * from students;