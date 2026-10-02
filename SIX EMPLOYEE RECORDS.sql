-- =====================================================
-- PROGRAM 10
-- SIX EMPLOYEE RECORDS
-- =====================================================

CREATE TABLE P10_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2),
    City VARCHAR2(40)
);

INSERT INTO P10_Employee VALUES
(201, 'Ravi', 'IT', 55000, 'Hyderabad');

INSERT INTO P10_Employee VALUES
(202, 'Anjali', 'HR', 47000, 'Delhi');

INSERT INTO P10_Employee VALUES
(203, 'Kiran', 'Finance', 73000, 'Chennai');

INSERT INTO P10_Employee VALUES
(204, 'Meghana', 'Marketing', 52000, 'Mumbai');

INSERT INTO P10_Employee VALUES
(205, 'Tarun', 'IT', 68000, 'Pune');

INSERT INTO P10_Employee VALUES
(206, 'Sowmya', 'Finance', 71000, 'Bangalore');

COMMIT;

SELECT * FROM P10_Employee;