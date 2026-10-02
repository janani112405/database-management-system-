-- =====================================================
-- PROGRAM 34
-- DELETE OPERATION
-- =====================================================

CREATE TABLE P34_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P34_Employee VALUES (1, 'Sahil', 'IT', 55000);
INSERT INTO P34_Employee VALUES (2, 'Nandita', 'HR', 49000);
INSERT INTO P34_Employee VALUES (3, 'Gautam', 'Finance', 76000);
INSERT INTO P34_Employee VALUES (4, 'Isha', 'Marketing', 57000);

COMMIT;

SELECT * FROM P34_Employee;

-- Delete employee Nandita
DELETE FROM P34_Employee
WHERE Emp_ID = 2;

SELECT * FROM P34_Employee;

COMMIT;