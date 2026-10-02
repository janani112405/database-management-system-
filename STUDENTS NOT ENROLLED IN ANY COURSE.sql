-- =====================================================
-- PROGRAM 39
-- STUDENTS NOT ENROLLED IN ANY COURSE
-- =====================================================

CREATE TABLE P39_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P39_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50)
);

CREATE TABLE P39_Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER,
    Course_ID NUMBER,
    FOREIGN KEY (Student_ID)
        REFERENCES P39_Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES P39_Course(Course_ID)
);

INSERT INTO P39_Student VALUES (1, 'Madhuri');
INSERT INTO P39_Student VALUES (2, 'Nikhil');
INSERT INTO P39_Student VALUES (3, 'Pavan');
INSERT INTO P39_Student VALUES (4, 'Roshini');
INSERT INTO P39_Student VALUES (5, 'Suman');

INSERT INTO P39_Course VALUES (101, 'DBMS');
INSERT INTO P39_Course VALUES (102, 'AI');
INSERT INTO P39_Course VALUES (103, 'Python');

INSERT INTO P39_Enrollment VALUES (1001, 1, 101);
INSERT INTO P39_Enrollment VALUES (1002, 2, 102);
INSERT INTO P39_Enrollment VALUES (1003, 4, 103);

COMMIT;

-- Students without any enrollment
SELECT
    S.Student_ID,
    S.Student_Name
FROM P39_Student S
LEFT JOIN P39_Enrollment E
ON S.Student_ID = E.Student_ID
WHERE E.Student_ID IS NULL;