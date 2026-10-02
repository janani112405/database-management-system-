-- =====================================================
-- PROGRAM 14
-- EMPLOYEE DETAILS VIEW
-- =====================================================

CREATE TABLE P14_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2),
    City VARCHAR2(40)
);

INSERT INTO P14_Employee VALUES
(1, 'Abhinav', 'IT', 60000, 'Hyderabad');

INSERT INTO P14_Employee VALUES
(2, 'Keerthi', 'HR', 48000, 'Chennai');

INSERT INTO P14_Employee VALUES
(3, 'Rohit', 'Finance', 78000, 'Mumbai');

INSERT INTO P14_Employee VALUES
(4, 'Snehal', 'IT', 67000, 'Pune');

COMMIT;

CREATE VIEW P14_Employee_Details
AS
SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       City
FROM P14_Employee;

SELECT * FROM P14_Employee_Details;