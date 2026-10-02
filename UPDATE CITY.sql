-- =====================================================
-- PROGRAM 26
-- UPDATE CITY
-- =====================================================

CREATE TABLE P26_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    City VARCHAR2(40),
    Department VARCHAR2(40)
);

INSERT INTO P26_Employee VALUES
(1, 'Ravi', 'Hyderabad', 'IT');

INSERT INTO P26_Employee VALUES
(2, 'Anusha', 'Chennai', 'HR');

INSERT INTO P26_Employee VALUES
(3, 'Mohan', 'Delhi', 'Finance');

COMMIT;

SELECT * FROM P26_Employee;

UPDATE P26_Employee
SET City = 'Vijayawada'
WHERE Emp_ID = 1;

SELECT * FROM P26_Employee;

COMMIT;