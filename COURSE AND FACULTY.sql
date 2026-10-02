-- =====================================================
-- PROGRAM 17
-- COURSE AND FACULTY
-- =====================================================

CREATE TABLE P17_Faculty (
    Faculty_ID NUMBER PRIMARY KEY,
    Faculty_Name VARCHAR2(60)
);

CREATE TABLE P17_Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(60),
    Faculty_ID NUMBER,
    FOREIGN KEY (Faculty_ID)
        REFERENCES P17_Faculty(Faculty_ID)
);

INSERT INTO P17_Faculty VALUES (1, 'Dr. Anil Kumar');
INSERT INTO P17_Faculty VALUES (2, 'Dr. Lakshmi Devi');
INSERT INTO P17_Faculty VALUES (3, 'Dr. Suresh Rao');

INSERT INTO P17_Course VALUES (101, 'Database Systems', 1);
INSERT INTO P17_Course VALUES (102, 'Artificial Intelligence', 2);
INSERT INTO P17_Course VALUES (103, 'Data Structures', 3);

COMMIT;

SELECT
    C.Course_Name,
    F.Faculty_Name
FROM P17_Course C
JOIN P17_Faculty F
ON C.Faculty_ID = F.Faculty_ID;