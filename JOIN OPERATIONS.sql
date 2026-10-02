-- =====================================================
-- PROGRAM 4
-- JOIN OPERATIONS
-- =====================================================

CREATE TABLE P04_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P04_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Dept_ID NUMBER,
    Salary NUMBER(10,2)
);

INSERT INTO P04_Department VALUES (1, 'Software');
INSERT INTO P04_Department VALUES (2, 'Human Resources');
INSERT INTO P04_Department VALUES (3, 'Finance');
INSERT INTO P04_Department VALUES (4, 'Research');

INSERT INTO P04_Employee VALUES (101, 'Harish', 1, 62000);
INSERT INTO P04_Employee VALUES (102, 'Pooja', 2, 54000);
INSERT INTO P04_Employee VALUES (103, 'Suresh', 1, 70000);

COMMIT;

-- NATURAL JOIN
SELECT Emp_ID, Emp_Name, Dept_Name
FROM P04_Employee
NATURAL JOIN P04_Department;

-- EQUI JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P04_Employee E, P04_Department D
WHERE E.Dept_ID = D.Dept_ID;

-- INNER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P04_Employee E
INNER JOIN P04_Department D
ON E.Dept_ID = D.Dept_ID;

-- LEFT OUTER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P04_Employee E
LEFT OUTER JOIN P04_Department D
ON E.Dept_ID = D.Dept_ID;

-- RIGHT OUTER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P04_Employee E
RIGHT OUTER JOIN P04_Department D
ON E.Dept_ID = D.Dept_ID;