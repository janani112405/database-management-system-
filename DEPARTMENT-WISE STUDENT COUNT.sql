-- =====================================================
-- PROGRAM 33
-- DEPARTMENT-WISE STUDENT COUNT
-- =====================================================

CREATE TABLE P33_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P33_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Dept_ID NUMBER,
    FOREIGN KEY (Dept_ID)
        REFERENCES P33_Department(Dept_ID)
);

INSERT INTO P33_Department VALUES (1, 'CSE');
INSERT INTO P33_Department VALUES (2, 'AIML');
INSERT INTO P33_Department VALUES (3, 'ECE');
INSERT INTO P33_Department VALUES (4, 'EEE');

INSERT INTO P33_Student VALUES (101, 'Aditi', 1);
INSERT INTO P33_Student VALUES (102, 'Ravi', 2);
INSERT INTO P33_Student VALUES (103, 'Kiran', 2);
INSERT INTO P33_Student VALUES (104, 'Meena', 1);
INSERT INTO P33_Student VALUES (105, 'Varun', 3);
INSERT INTO P33_Student VALUES (106, 'Pooja', 2);

COMMIT;

SELECT
    D.Dept_ID,
    D.Dept_Name,
    COUNT(S.Student_ID) AS Student_Count
FROM P33_Department D
LEFT JOIN P33_Student S
ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_ID, D.Dept_Name;