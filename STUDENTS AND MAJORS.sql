-- =====================================================
-- PROGRAM 7
-- STUDENTS AND MAJORS
-- =====================================================

CREATE TABLE P07_Major (
    Major_ID NUMBER PRIMARY KEY,
    Major_Name VARCHAR2(60)
);

CREATE TABLE P07_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Major_ID NUMBER,
    FOREIGN KEY (Major_ID)
        REFERENCES P07_Major(Major_ID)
);

INSERT INTO P07_Major VALUES (1, 'Artificial Intelligence');
INSERT INTO P07_Major VALUES (2, 'Data Science');
INSERT INTO P07_Major VALUES (3, 'Cyber Security');
INSERT INTO P07_Major VALUES (4, 'Computer Science');

INSERT INTO P07_Student VALUES (101, 'Aisha', 1);
INSERT INTO P07_Student VALUES (102, 'Rohit', 2);
INSERT INTO P07_Student VALUES (103, 'Neha', 3);
INSERT INTO P07_Student VALUES (104, 'Varun', 4);

COMMIT;

SELECT
    S.Student_ID,
    S.Student_Name,
    M.Major_Name
FROM P07_Student S
JOIN P07_Major M
ON S.Major_ID = M.Major_ID;