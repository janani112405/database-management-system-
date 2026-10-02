-- =====================================================
-- PROGRAM 27
-- NUMERIC AND DATE FUNCTIONS
-- =====================================================

CREATE TABLE P27_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER(10,2),
    Joining_Date DATE
);

INSERT INTO P27_Employee VALUES
(1, 'Srinivas', 52750.75, DATE '2022-01-15');

INSERT INTO P27_Employee VALUES
(2, 'Harsha', 63890.40, DATE '2021-06-20');

INSERT INTO P27_Employee VALUES
(3, 'Renu', 71999.25, DATE '2020-03-10');

COMMIT;

-- Numeric functions
SELECT
    Emp_Name,
    Salary,
    ROUND(Salary) AS Rounded_Salary,
    CEIL(Salary) AS Ceiling_Value,
    FLOOR(Salary) AS Floor_Value,
    MOD(Salary, 1000) AS Remainder
FROM P27_Employee;

-- Date functions
SELECT
    Emp_Name,
    Joining_Date,
    SYSDATE AS Current_Date,
    ADD_MONTHS(Joining_Date, 12) AS One_Year_Later,
    MONTHS_BETWEEN(SYSDATE, Joining_Date) AS Months_Worked
FROM P27_Employee;