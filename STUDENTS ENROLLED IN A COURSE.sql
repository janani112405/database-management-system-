-- =====================================================
-- PROGRAM 15
-- STUDENTS ENROLLED IN A COURSE
-- =====================================================

CREATE TABLE P15_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P15_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50)
);

CREATE TABLE P15_Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER,
    Course_ID NUMBER,
    FOREIGN KEY (Student_ID)
        REFERENCES P15_Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES P15_Course(Course_ID)
);

INSERT INTO P15_Student VALUES (1, 'Aditi');
INSERT INTO P15_Student VALUES (2, 'Rohan');
INSERT INTO P15_Student VALUES (3, 'Mounika');
INSERT INTO P15_Student VALUES (4, 'Vamsi');

INSERT INTO P15_Course VALUES (101, 'DBMS');
INSERT INTO P15_Course VALUES (102, 'Machine Learning');
INSERT INTO P15_Course VALUES (103, 'Python');

INSERT INTO P15_Enrollment VALUES (1001, 1, 101);
INSERT INTO P15_Enrollment VALUES (1002, 2, 102);
INSERT INTO P15_Enrollment VALUES (1003, 3, 101);
INSERT INTO P15_Enrollment VALUES (1004, 4, 103);

COMMIT;

SELECT
    S.Student_ID,
    S.Student_Name,
    C.Course_Name
FROM P15_Student S
JOIN P15_Enrollment E
ON S.Student_ID = E.Student_ID
JOIN P15_Course C
ON E.Course_ID = C.Course_ID
WHERE C.Course_Name = 'DBMS';