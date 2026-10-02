-- =====================================================
-- PROGRAM 19
-- STRING FUNCTIONS
-- =====================================================

CREATE TABLE P19_Student (
    Student_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(30),
    Last_Name VARCHAR2(30)
);

INSERT INTO P19_Student VALUES (1, 'Aarav', 'Reddy');
INSERT INTO P19_Student VALUES (2, 'Ishita', 'Kumar');
INSERT INTO P19_Student VALUES (3, 'Rahul', 'Sharma');
INSERT INTO P19_Student VALUES (4, 'Meghana', 'Rao');

COMMIT;

SELECT
    First_Name,
    Last_Name,

    CONCAT(First_Name, Last_Name) AS Concatenated_Name,

    UPPER(First_Name) AS Upper_Name,

    LOWER(Last_Name) AS Lower_Name,

    LENGTH(First_Name) AS First_Name_Length

FROM P19_Student;