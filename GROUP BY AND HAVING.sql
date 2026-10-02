-- =====================================================
-- PROGRAM 35
-- GROUP BY AND HAVING
-- =====================================================

CREATE TABLE P35_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P35_Employee VALUES (1, 'Ajay', 'IT', 51000);
INSERT INTO P35_Employee VALUES (2, 'Kavya', 'IT', 64000);
INSERT INTO P35_Employee VALUES (3, 'Ramesh', 'Finance', 73000);
INSERT INTO P35_Employee VALUES (4, 'Divya', 'Finance', 82000);
INSERT INTO P35_Employee VALUES (5, 'Mohan', 'HR', 44000);
INSERT INTO P35_Employee VALUES (6, 'Latha', 'HR', 49000);

COMMIT;

SELECT
    Department,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary,
    COUNT(*) AS Employee_Count
FROM P35_Employee
GROUP BY Department
HAVING AVG(Salary) >= 50000;