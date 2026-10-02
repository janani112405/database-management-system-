-- =====================================================
-- PROGRAM 29
-- NESTED QUERY
-- =====================================================

CREATE TABLE P29_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P29_Employee VALUES (1, 'Arjun', 'IT', 52000);
INSERT INTO P29_Employee VALUES (2, 'Priyanka', 'HR', 47000);
INSERT INTO P29_Employee VALUES (3, 'David', 'Finance', 85000);
INSERT INTO P29_Employee VALUES (4, 'Rohit', 'IT', 72000);
INSERT INTO P29_Employee VALUES (5, 'Kavya', 'HR', 55000);

COMMIT;

SELECT *
FROM P29_Employee
WHERE Salary < (
    SELECT Salary
    FROM P29_Employee
    WHERE Emp_Name = 'David'
);