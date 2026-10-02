-- =====================================================
-- PROGRAM 2
-- EMPLOYEE DATABASE
-- =====================================================

CREATE TABLE P02_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2),
    City VARCHAR2(40)
);

INSERT INTO P02_Employee VALUES
(101, 'Aarav', 'IT', 55000, 'Hyderabad');

INSERT INTO P02_Employee VALUES
(102, 'Meera', 'HR', 48000, 'Chennai');

INSERT INTO P02_Employee VALUES
(103, 'Vikram', 'Finance', 72000, 'Bangalore');

INSERT INTO P02_Employee VALUES
(104, 'Diya', 'Marketing', 58000, 'Mumbai');

INSERT INTO P02_Employee VALUES
(105, 'Rohan', 'IT', 65000, 'Pune');

COMMIT;

-- SELECT
SELECT * FROM P02_Employee;

-- UPDATE
UPDATE P02_Employee
SET Salary = 60000
WHERE Emp_ID = 101;

SELECT * FROM P02_Employee;

-- DELETE
DELETE FROM P02_Employee
WHERE Emp_ID = 102;

SELECT * FROM P02_Employee;

COMMIT;