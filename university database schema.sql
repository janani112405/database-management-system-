-- =====================================================
-- PROGRAM 1
-- UNIVERSITY DATABASE SCHEMA
-- =====================================================

CREATE TABLE P01_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50) NOT NULL,
    Location VARCHAR2(50)
);

CREATE TABLE P01_Faculty (
    Faculty_ID NUMBER PRIMARY KEY,
    Faculty_Name VARCHAR2(50) NOT NULL,
    Dept_ID NUMBER,
    Salary NUMBER(10,2),
    FOREIGN KEY (Dept_ID) REFERENCES P01_Department(Dept_ID)
);

CREATE TABLE P01_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50) NOT NULL,
    Dept_ID NUMBER,
    Age NUMBER,
    FOREIGN KEY (Dept_ID) REFERENCES P01_Department(Dept_ID)
);

CREATE TABLE P01_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50) NOT NULL,
    Credits NUMBER
);

CREATE TABLE P01_Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER,
    Course_ID NUMBER,
    Enrollment_Date DATE,
    Grade VARCHAR2(5),
    FOREIGN KEY (Student_ID) REFERENCES P01_Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES P01_Course(Course_ID)
);

-- Department data
INSERT INTO P01_Department VALUES (1, 'Computer Science', 'Block A');
INSERT INTO P01_Department VALUES (2, 'Artificial Intelligence', 'Block B');
INSERT INTO P01_Department VALUES (3, 'Electronics', 'Block C');

-- Faculty data
INSERT INTO P01_Faculty VALUES (101, 'Dr. Ravi', 1, 75000);
INSERT INTO P01_Faculty VALUES (102, 'Dr. Priya', 2, 82000);
INSERT INTO P01_Faculty VALUES (103, 'Dr. Kumar', 3, 70000);

-- Student data
INSERT INTO P01_Student VALUES (201, 'Ananya', 1, 19);
INSERT INTO P01_Student VALUES (202, 'Rahul', 2, 20);
INSERT INTO P01_Student VALUES (203, 'Sneha', 3, 19);

-- Course data
INSERT INTO P01_Course VALUES (301, 'Database Management Systems', 4);
INSERT INTO P01_Course VALUES (302, 'Artificial Intelligence', 4);
INSERT INTO P01_Course VALUES (303, 'Computer Networks', 3);

-- Enrollment data
INSERT INTO P01_Enrollment
VALUES (401, 201, 301, DATE '2026-09-01', 'A');

INSERT INTO P01_Enrollment
VALUES (402, 202, 302, DATE '2026-09-02', 'A+');

INSERT INTO P01_Enrollment
VALUES (403, 203, 303, DATE '2026-09-03', 'B');

COMMIT;

SELECT * FROM P01_Department;
SELECT * FROM P01_Faculty;
SELECT * FROM P01_Student;
SELECT * FROM P01_Course;
SELECT * FROM P01_Enrollment;