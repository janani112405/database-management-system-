-- =====================================================
-- PROGRAM 18
-- SELECT WITH WHERE CLAUSE
-- =====================================================

CREATE TABLE P18_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2),
    City VARCHAR2(40)
);

INSERT INTO P18_Employee VALUES
(1, 'Varun', 'IT', 58000, 'Hyderabad');

INSERT INTO P18_Employee VALUES
(2, 'Shalini', 'HR', 47000, 'Delhi');

INSERT INTO P18_Employee VALUES
(3, 'Naveen', 'Finance', 76000, 'Mumbai');

INSERT INTO P18_Employee VALUES
(4, 'Tejas', 'IT', 69000, 'Pune');

COMMIT;

-- Specified department
SELECT *
FROM P18_Employee
WHERE Department = 'IT';

-- Specified salary condition
SELECT *
FROM P18_Employee
WHERE Salary > 60000;

-- Specified city
SELECT *
FROM P18_Employee
WHERE City = 'Hyderabad';