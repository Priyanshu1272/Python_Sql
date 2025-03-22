USE college_dtb;

CREATE TABLE StudentInfo (
    Student_ID INT PRIMARY KEY, 
    FullName VARCHAR(255), 
    City VARCHAR(255)
);

INSERT INTO StudentInfo (Student_ID, FullName, City) VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Rohit', 'Pune'),
(3, 'Sahil', 'Bangalore'),
(4, 'Vikas', 'Hyderabad'),
(5, 'Ankit', 'Chennai');


CREATE TABLE StudentScores (
    ID INT PRIMARY KEY, 
    FullName VARCHAR(255), 
    Score INT, 
    Age INT
);

INSERT INTO StudentScores (ID, FullName, Score, Age) VALUES
(1, 'Amit', 88, 20),
(2, 'Suresh', 55, 22),
(3, 'Sahil', 78, 21),
(4, 'Vikas', 92, 23),
(5, 'Ankit', 87, 19);

CREATE UNIQUE INDEX idx_unique_name ON StudentInfo (FullName);

CREATE INDEX idx_city ON StudentInfo (City);
SELECT * FROM StudentInfo WHERE City = 'Bangalore';

CREATE INDEX idx_score_age ON StudentScores (Score, Age);
SELECT * FROM StudentScores WHERE Score > 80 AND Age < 20;

ALTER TABLE StudentInfo ADD FULLTEXT INDEX idx_fulltext_name (FullName);
SELECT * FROM StudentInfo WHERE MATCH(FullName) AGAINST ('Sah');

DROP INDEX idx_score_age ON StudentScores;



