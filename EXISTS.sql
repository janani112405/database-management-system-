-- =====================================================
-- PROGRAM 37
-- EXISTS
-- =====================================================

CREATE TABLE P37_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50)
);

CREATE TABLE P37_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Dept_ID NUMBER,
    Salary NUMBER(10,2),
    FOREIGN KEY (Dept_ID)
        REFERENCES P37_Department(Dept_ID)
);

INSERT INTO P37_Department VALUES (1, 'IT');
INSERT INTO P37_Department VALUES (2, 'HR');
INSERT INTO P37_Department VALUES (3, 'Finance');
INSERT INTO P37_Department VALUES (4, 'Marketing');

INSERT INTO P37_Employee VALUES (101, 'Arvind', 1, 58000);
INSERT INTO P37_Employee VALUES (102, 'Bhavana', 2, 49000);
INSERT INTO P37_Employee VALUES (103, 'Chaitanya', 3, 75000);
INSERT INTO P37_Employee VALUES (104, 'Deepak', 1, 68000);
INSERT INTO P37_Employee VALUES (105, 'Esha', 4, 52000);

COMMIT;

SELECT
    D.Dept_ID,
    D.Dept_Name
FROM P37_Department D
WHERE EXISTS (
    SELECT 1
    FROM P37_Employee E
    WHERE E.Dept_ID = D.Dept_ID
    AND E.Salary > 60000
);