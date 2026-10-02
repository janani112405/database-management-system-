-- =====================================================
-- PROGRAM 13
-- HIGHEST SALARY USING NESTED QUERY
-- =====================================================

CREATE TABLE P13_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P13_Employee VALUES (1, 'Nikhil', 'IT', 58000);
INSERT INTO P13_Employee VALUES (2, 'Pavani', 'HR', 49000);
INSERT INTO P13_Employee VALUES (3, 'Siddharth', 'Finance', 95000);
INSERT INTO P13_Employee VALUES (4, 'Ritu', 'Marketing', 72000);
INSERT INTO P13_Employee VALUES (5, 'Manoj', 'IT', 85000);

COMMIT;

SELECT *
FROM P13_Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM P13_Employee
);