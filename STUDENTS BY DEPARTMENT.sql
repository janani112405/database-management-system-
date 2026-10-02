-- =====================================================
-- PROGRAM 9
-- STUDENTS BY DEPARTMENT
-- =====================================================

CREATE TABLE P09_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P09_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Dept_ID NUMBER,
    FOREIGN KEY (Dept_ID)
        REFERENCES P09_Department(Dept_ID)
);

INSERT INTO P09_Department VALUES (1, 'CSE');
INSERT INTO P09_Department VALUES (2, 'AIML');
INSERT INTO P09_Department VALUES (3, 'ECE');
INSERT INTO P09_Department VALUES (4, 'EEE');

INSERT INTO P09_Student VALUES (101, 'Aarohi', 1);
INSERT INTO P09_Student VALUES (102, 'Teja', 2);
INSERT INTO P09_Student VALUES (103, 'Kavya', 2);
INSERT INTO P09_Student VALUES (104, 'Rakesh', 3);
INSERT INTO P09_Student VALUES (105, 'Madhav', 4);

COMMIT;

SELECT S.Student_ID,
       S.Student_Name,
       D.Dept_Name
FROM P09_Student S
JOIN P09_Department D
ON S.Dept_ID = D.Dept_ID
WHERE D.Dept_Name = 'AIML';