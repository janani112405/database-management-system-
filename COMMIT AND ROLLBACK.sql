-- =====================================================
-- PROGRAM 40
-- COMMIT AND ROLLBACK
-- =====================================================

CREATE TABLE P40_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Department VARCHAR2(40),
    Salary NUMBER(10,2)
);

INSERT INTO P40_Employee VALUES
(1, 'Raghav', 'IT', 55000);

INSERT INTO P40_Employee VALUES
(2, 'Shreya', 'HR', 48000);

-- Permanently save these records
COMMIT;

SELECT * FROM P40_Employee;

-- Insert another record
INSERT INTO P40_Employee VALUES
(3, 'Tanmay', 'Finance', 72000);

SELECT * FROM P40_Employee;

-- Undo the last INSERT
ROLLBACK;

SELECT * FROM P40_Employee;

-- Insert a new record
INSERT INTO P40_Employee VALUES
(4, 'Uma', 'Marketing', 58000);

-- Permanently save it
COMMIT;

SELECT * FROM P40_Employee;