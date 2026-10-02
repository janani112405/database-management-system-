-- =====================================================
-- PROGRAM 28
-- DEPARTMENT AND EMPLOYEE JOIN
-- =====================================================

CREATE TABLE P28_Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(50),
    Location VARCHAR2(50)
);

CREATE TABLE P28_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Dept_ID NUMBER,
    Salary NUMBER(10,2),
    FOREIGN KEY (Dept_ID)
        REFERENCES P28_Department(Dept_ID)
);

INSERT INTO P28_Department VALUES (1, 'Technology', 'Hyderabad');
INSERT INTO P28_Department VALUES (2, 'Human Resources', 'Chennai');
INSERT INTO P28_Department VALUES (3, 'Finance', 'Mumbai');

INSERT INTO P28_Employee VALUES (101, 'Vishal', 1, 65000);
INSERT INTO P28_Employee VALUES (102, 'Riya', 2, 52000);
INSERT INTO P28_Employee VALUES (103, 'Abhishek', 1, 72000);
INSERT INTO P28_Employee VALUES (104, 'Swathi', 3, 68000);

COMMIT;

SELECT
    E.Emp_ID,
    E.Emp_Name,
    D.Dept_Name,
    D.Location,
    E.Salary
FROM P28_Employee E
INNER JOIN P28_Department D
ON E.Dept_ID = D.Dept_ID;