-- =====================================================
-- PROGRAM 8
-- DCL AND TRANSACTION CONTROL
-- =====================================================

CREATE TABLE P08_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER(10,2)
);

INSERT INTO P08_Employee VALUES (1, 'Sanjay', 50000);
INSERT INTO P08_Employee VALUES (2, 'Deepika', 62000);

COMMIT;

-- Replace LAB_USER with an existing Oracle username
GRANT SELECT ON P08_Employee TO LAB_USER;

REVOKE SELECT ON P08_Employee FROM LAB_USER;

-- Transaction operations
INSERT INTO P08_Employee VALUES (3, 'Varsha', 57000);

SAVEPOINT P08_SAVEPOINT;

INSERT INTO P08_Employee VALUES (4, 'Ajay', 69000);

SELECT * FROM P08_Employee;

ROLLBACK TO P08_SAVEPOINT;

SELECT * FROM P08_Employee;

COMMIT;