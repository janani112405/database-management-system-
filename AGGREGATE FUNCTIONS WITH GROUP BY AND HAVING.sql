-- =====================================================
-- PROGRAM 11
-- AGGREGATE FUNCTIONS WITH GROUP BY AND HAVING
-- =====================================================

CREATE TABLE P11_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P11_Employee VALUES (1, 'Raj', 'IT', 52000);
INSERT INTO P11_Employee VALUES (2, 'Pallavi', 'IT', 68000);
INSERT INTO P11_Employee VALUES (3, 'Vijay', 'Finance', 72000);
INSERT INTO P11_Employee VALUES (4, 'Harini', 'Finance', 81000);
INSERT INTO P11_Employee VALUES (5, 'Arun', 'HR', 46000);
INSERT INTO P11_Employee VALUES (6, 'Maya', 'HR', 51000);

COMMIT;

SELECT
    Department,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary,
    COUNT(*) AS Employee_Count
FROM P11_Employee
GROUP BY Department
HAVING AVG(Salary) > 50000;