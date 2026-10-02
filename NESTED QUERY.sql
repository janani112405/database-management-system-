-- =====================================================
-- PROGRAM 21
-- NESTED QUERY
-- =====================================================

CREATE TABLE P21_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P21_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Dept_ID NUMBER,
    Salary NUMBER(10,2),
    FOREIGN KEY (Dept_ID)
        REFERENCES P21_Department(Dept_ID)
);

INSERT INTO P21_Department VALUES (1, 'IT');
INSERT INTO P21_Department VALUES (2, 'Finance');
INSERT INTO P21_Department VALUES (3, 'HR');
INSERT INTO P21_Department VALUES (4, 'Sales');

INSERT INTO P21_Employee VALUES (101, 'Abhay', 1, 60000);
INSERT INTO P21_Employee VALUES (102, 'Nandini', 2, 72000);
INSERT INTO P21_Employee VALUES (103, 'Kiran', 3, 50000);
INSERT INTO P21_Employee VALUES (104, 'Ravi', 1, 68000);
INSERT INTO P21_Employee VALUES (105, 'Sneha', 2, 79000);

COMMIT;

SELECT *
FROM P21_Employee
WHERE Dept_ID IN (
    SELECT Dept_ID
    FROM P21_Department
    WHERE Dept_Name IN ('Finance', 'IT')
);