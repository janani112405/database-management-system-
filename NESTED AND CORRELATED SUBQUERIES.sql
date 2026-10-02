-- =====================================================
-- PROGRAM 5
-- NESTED AND CORRELATED SUBQUERIES
-- =====================================================

CREATE TABLE P05_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P05_Employee VALUES (1, 'Akhil', 'IT', 50000);
INSERT INTO P05_Employee VALUES (2, 'Bhavana', 'IT', 70000);
INSERT INTO P05_Employee VALUES (3, 'David', 'Finance', 85000);
INSERT INTO P05_Employee VALUES (4, 'Riya', 'Finance', 60000);
INSERT INTO P05_Employee VALUES (5, 'Mohan', 'HR', 45000);
INSERT INTO P05_Employee VALUES (6, 'Tara', 'HR', 65000);

COMMIT;

-- Nested query:
-- Employees earning more than overall average salary
SELECT *
FROM P05_Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM P05_Employee
);

-- Correlated query:
-- Employees earning more than their department average
SELECT E1.Emp_ID,
       E1.Emp_Name,
       E1.Department,
       E1.Salary
FROM P05_Employee E1
WHERE E1.Salary > (
    SELECT AVG(E2.Salary)
    FROM P05_Employee E2
    WHERE E2.Department = E1.Department
);