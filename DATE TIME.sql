-- =====================================================
-- PROGRAM 3
-- DATE/TIME AND AGGREGATE FUNCTIONS
-- =====================================================

CREATE TABLE P03_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER(10,2),
    Joining_Date DATE
);

INSERT INTO P03_Employee VALUES
(1, 'Karthik', 52000, DATE '2022-01-15');

INSERT INTO P03_Employee VALUES
(2, 'Nisha', 68000, DATE '2021-06-20');

INSERT INTO P03_Employee VALUES
(3, 'Aditya', 75000, DATE '2020-03-10');

INSERT INTO P03_Employee VALUES
(4, 'Lavanya', 59000, DATE '2023-08-05');

INSERT INTO P03_Employee VALUES
(5, 'Manoj', 63000, DATE '2022-11-25');

COMMIT;

-- Date functions
SELECT
    Emp_Name,
    Joining_Date,
    SYSDATE AS Current_Date,
    ADD_MONTHS(Joining_Date, 6) AS After_Six_Months,
    MONTHS_BETWEEN(SYSDATE, Joining_Date) AS Months_Worked
FROM P03_Employee;

-- Aggregate functions
SELECT
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary
FROM P03_Employee;