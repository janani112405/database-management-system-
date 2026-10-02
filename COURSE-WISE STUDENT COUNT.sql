-- =====================================================
-- PROGRAM 31
-- COURSE-WISE STUDENT COUNT
-- =====================================================

CREATE TABLE P31_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P31_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50)
);

CREATE TABLE P31_Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER,
    Course_ID NUMBER,
    FOREIGN KEY (Student_ID)
        REFERENCES P31_Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES P31_Course(Course_ID)
);

INSERT INTO P31_Student VALUES (1, 'Aarushi');
INSERT INTO P31_Student VALUES (2, 'Bharat');
INSERT INTO P31_Student VALUES (3, 'Chaitanya');
INSERT INTO P31_Student VALUES (4, 'Dharani');
INSERT INTO P31_Student VALUES (5, 'Eshwar');

INSERT INTO P31_Course VALUES (101, 'DBMS');
INSERT INTO P31_Course VALUES (102, 'Artificial Intelligence');
INSERT INTO P31_Course VALUES (103, 'Python Programming');

INSERT INTO P31_Enrollment VALUES (1001, 1, 101);
INSERT INTO P31_Enrollment VALUES (1002, 2, 101);
INSERT INTO P31_Enrollment VALUES (1003, 3, 102);
INSERT INTO P31_Enrollment VALUES (1004, 4, 101);
INSERT INTO P31_Enrollment VALUES (1005, 5, 103);

COMMIT;

SELECT
    C.Course_ID,
    C.Course_Name,
    COUNT(E.Student_ID) AS Number_Of_Students
FROM P31_Course C
LEFT JOIN P31_Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_ID, C.Course_Name;