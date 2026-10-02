-- =====================================================
-- PROGRAM 25
-- ENROLLMENTS AND GRADES
-- =====================================================

CREATE TABLE P25_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P25_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50)
);

CREATE TABLE P25_Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER,
    Course_ID NUMBER,
    Grade VARCHAR2(5),
    FOREIGN KEY (Student_ID)
        REFERENCES P25_Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES P25_Course(Course_ID)
);

INSERT INTO P25_Student VALUES (1, 'Aanya');
INSERT INTO P25_Student VALUES (2, 'Rohit');
INSERT INTO P25_Student VALUES (3, 'Manasa');

INSERT INTO P25_Course VALUES (101, 'DBMS');
INSERT INTO P25_Course VALUES (102, 'Artificial Intelligence');
INSERT INTO P25_Course VALUES (103, 'Statistics');

INSERT INTO P25_Enrollment VALUES (1001, 1, 101, 'A');
INSERT INTO P25_Enrollment VALUES (1002, 2, 102, 'A+');
INSERT INTO P25_Enrollment VALUES (1003, 3, 103, 'B+');

COMMIT;

SELECT
    S.Student_Name,
    C.Course_Name,
    E.Grade
FROM P25_Student S
JOIN P25_Enrollment E
ON S.Student_ID = E.Student_ID
JOIN P25_Course C
ON E.Course_ID = C.Course_ID;