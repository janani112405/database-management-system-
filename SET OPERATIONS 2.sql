-- =====================================================
-- PROGRAM 36
-- SET OPERATIONS
-- =====================================================

CREATE TABLE P36_Class_A (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

CREATE TABLE P36_Class_B (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50)
);

INSERT INTO P36_Class_A VALUES (101, 'Ananya');
INSERT INTO P36_Class_A VALUES (102, 'Bharath');
INSERT INTO P36_Class_A VALUES (103, 'Chandana');
INSERT INTO P36_Class_A VALUES (104, 'Dheeraj');

INSERT INTO P36_Class_B VALUES (103, 'Chandana');
INSERT INTO P36_Class_B VALUES (104, 'Dheeraj');
INSERT INTO P36_Class_B VALUES (105, 'Esha');
INSERT INTO P36_Class_B VALUES (106, 'Farooq');

COMMIT;

-- UNION
SELECT Student_ID, Student_Name
FROM P36_Class_A
UNION
SELECT Student_ID, Student_Name
FROM P36_Class_B;

-- INTERSECTION
SELECT Student_ID, Student_Name
FROM P36_Class_A
INTERSECT
SELECT Student_ID, Student_Name
FROM P36_Class_B;

-- SET DIFFERENCE
SELECT Student_ID, Student_Name
FROM P36_Class_A
MINUS
SELECT Student_ID, Student_Name
FROM P36_Class_B;