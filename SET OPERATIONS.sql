-- =====================================================
-- PROGRAM 12
-- SET OPERATIONS
-- =====================================================

CREATE TABLE P12_Group_A (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P12_Group_B (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

INSERT INTO P12_Group_A VALUES (1, 'Anu');
INSERT INTO P12_Group_A VALUES (2, 'Bharat');
INSERT INTO P12_Group_A VALUES (3, 'Chitra');
INSERT INTO P12_Group_A VALUES (4, 'Dinesh');

INSERT INTO P12_Group_B VALUES (3, 'Chitra');
INSERT INTO P12_Group_B VALUES (4, 'Dinesh');
INSERT INTO P12_Group_B VALUES (5, 'Esha');
INSERT INTO P12_Group_B VALUES (6, 'Farhan');

COMMIT;

-- UNION
SELECT Student_ID, Student_Name
FROM P12_Group_A
UNION
SELECT Student_ID, Student_Name
FROM P12_Group_B;

-- INTERSECTION
SELECT Student_ID, Student_Name
FROM P12_Group_A
INTERSECT
SELECT Student_ID, Student_Name
FROM P12_Group_B;

-- SET DIFFERENCE
SELECT Student_ID, Student_Name
FROM P12_Group_A
MINUS
SELECT Student_ID, Student_Name
FROM P12_Group_B;