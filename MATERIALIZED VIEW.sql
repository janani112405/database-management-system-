-- =====================================================
-- PROGRAM 22
-- MATERIALIZED VIEW
-- =====================================================

CREATE TABLE P22_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P22_Employee VALUES (1, 'Rakesh', 'IT', 56000);
INSERT INTO P22_Employee VALUES (2, 'Niharika', 'IT', 67000);
INSERT INTO P22_Employee VALUES (3, 'Surya', 'Finance', 75000);
INSERT INTO P22_Employee VALUES (4, 'Kavitha', 'Finance', 69000);
INSERT INTO P22_Employee VALUES (5, 'Pranav', 'HR', 48000);

COMMIT;

CREATE MATERIALIZED VIEW P22_Department_Summary
AS
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM P22_Employee
GROUP BY Department;

SELECT * FROM P22_Department_Summary;