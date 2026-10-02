-- =====================================================
-- PROGRAM 20
-- JOIN OPERATIONS
-- =====================================================

CREATE TABLE P20_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P20_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Dept_ID NUMBER
);

INSERT INTO P20_Department VALUES (1, 'IT');
INSERT INTO P20_Department VALUES (2, 'HR');
INSERT INTO P20_Department VALUES (3, 'Finance');
INSERT INTO P20_Department VALUES (4, 'Operations');

INSERT INTO P20_Employee VALUES (101, 'Akash', 1);
INSERT INTO P20_Employee VALUES (102, 'Pooja', 2);
INSERT INTO P20_Employee VALUES (103, 'Karthik', 1);

COMMIT;

-- INNER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P20_Employee E
INNER JOIN P20_Department D
ON E.Dept_ID = D.Dept_ID;

-- LEFT OUTER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P20_Employee E
LEFT OUTER JOIN P20_Department D
ON E.Dept_ID = D.Dept_ID;

-- RIGHT OUTER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM P20_Employee E
RIGHT OUTER JOIN P20_Department D
ON E.Dept_ID = D.Dept_ID;