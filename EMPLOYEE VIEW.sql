-- =====================================================
-- PROGRAM 30
-- EMPLOYEE VIEW
-- =====================================================

CREATE TABLE P30_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2),
    City VARCHAR2(40)
);

INSERT INTO P30_Employee VALUES
(1, 'Aakash', 'IT', 58000, 'Hyderabad');

INSERT INTO P30_Employee VALUES
(2, 'Bhavya', 'HR', 46000, 'Chennai');

INSERT INTO P30_Employee VALUES
(3, 'Chandan', 'Finance', 79000, 'Bangalore');

INSERT INTO P30_Employee VALUES
(4, 'Deepa', 'IT', 67000, 'Hyderabad');

COMMIT;

CREATE VIEW P30_IT_Employee_View
AS
SELECT
    Emp_ID,
    Emp_Name,
    Salary,
    City
FROM P30_Employee
WHERE Department = 'IT';

SELECT * FROM P30_IT_Employee_View;