-- =====================================================
-- PROGRAM 38
-- MATERIALIZED VIEW
-- =====================================================

CREATE TABLE P38_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P38_Employee VALUES (1, 'Girish', 'IT', 55000);
INSERT INTO P38_Employee VALUES (2, 'Hema', 'IT', 66000);
INSERT INTO P38_Employee VALUES (3, 'Irfan', 'Finance', 78000);
INSERT INTO P38_Employee VALUES (4, 'Jyothi', 'Finance', 71000);
INSERT INTO P38_Employee VALUES (5, 'Kunal', 'HR', 47000);
INSERT INTO P38_Employee VALUES (6, 'Lalitha', 'HR', 52000);

COMMIT;

CREATE MATERIALIZED VIEW P38_Salary_Summary
AS
SELECT
    Department,
    COUNT(*) AS Employee_Count,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM P38_Employee
GROUP BY Department;

SELECT * FROM P38_Salary_Summary;