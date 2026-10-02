-- =====================================================
-- PROGRAM 23
-- INSTRUCTORS AND COURSES
-- =====================================================

CREATE TABLE P23_Instructor (
    Instructor_ID NUMBER PRIMARY KEY,
    Instructor_Name VARCHAR2(60)
);

CREATE TABLE P23_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(60),
    Instructor_ID NUMBER,
    FOREIGN KEY (Instructor_ID)
        REFERENCES P23_Instructor(Instructor_ID)
);

INSERT INTO P23_Instructor VALUES (1, 'Dr. Madhavi');
INSERT INTO P23_Instructor VALUES (2, 'Dr. Prakash');
INSERT INTO P23_Instructor VALUES (3, 'Dr. Swetha');

INSERT INTO P23_Course VALUES (101, 'Oracle Database', 1);
INSERT INTO P23_Course VALUES (102, 'Machine Learning', 2);
INSERT INTO P23_Course VALUES (103, 'Computer Networks', 3);

COMMIT;

SELECT
    I.Instructor_ID,
    I.Instructor_Name,
    C.Course_Name
FROM P23_Instructor I
JOIN P23_Course C
ON I.Instructor_ID = C.Instructor_ID
WHERE C.Course_Name = 'Oracle Database';