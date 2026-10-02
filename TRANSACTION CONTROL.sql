-- =====================================================
-- PROGRAM 24
-- TRANSACTION CONTROL
-- =====================================================

CREATE TABLE P24_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER(10,2)
);

INSERT INTO P24_Employee VALUES (1, 'Aman', 51000);
INSERT INTO P24_Employee VALUES (2, 'Ritika', 63000);

COMMIT;

INSERT INTO P24_Employee VALUES (3, 'Yash', 57000);

SAVEPOINT P24_POINT1;

INSERT INTO P24_Employee VALUES (4, 'Nikita', 69000);

SELECT * FROM P24_Employee;

ROLLBACK TO P24_POINT1;

SELECT * FROM P24_Employee;

COMMIT;

SELECT * FROM P24_Employee;