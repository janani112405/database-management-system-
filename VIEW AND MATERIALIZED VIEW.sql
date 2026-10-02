-- =====================================================
-- PROGRAM 6
-- VIEW AND MATERIALIZED VIEW
-- =====================================================

CREATE TABLE P06_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P06_Employee VALUES (1, 'Ramesh', 'IT', 58000);
INSERT INTO P06_Employee VALUES (2, 'Swathi', 'HR', 49000);
INSERT INTO P06_Employee VALUES (3, 'Vivek', 'Finance', 76000);
INSERT INTO P06_Employee VALUES (4, 'Keerthi', 'IT', 68000);
INSERT INTO P06_Employee VALUES (5, 'Naveen', 'Finance', 71000);

COMMIT;

-- Normal View
CREATE VIEW P06_HighSalary_View AS
SELECT Emp_ID, Emp_Name, Department, Salary
FROM P06_Employee
WHERE Salary > 55000;

SELECT * FROM P06_HighSalary_View;

-- Materialized View
CREATE MATERIALIZED VIEW P06_Department_MV
AS
SELECT Department,
       COUNT(*) AS Employee_Count,
       AVG(Salary) AS Average_Salary
FROM P06_Employee
GROUP BY Department;

SELECT * FROM P06_Department_MV;