-- =====================================================
-- PROGRAM 16
-- DCL COMMANDS
-- =====================================================

CREATE TABLE P16_Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER(10,2)
);

INSERT INTO P16_Employee VALUES (1, 'Sandeep', 54000);
INSERT INTO P16_Employee VALUES (2, 'Divya', 67000);
INSERT INTO P16_Employee VALUES (3, 'Lokesh', 59000);

COMMIT;

-- Replace LAB_USER with a valid Oracle username

GRANT SELECT ON P16_Employee TO LAB_USER;

GRANT INSERT ON P16_Employee TO LAB_USER;

REVOKE INSERT ON P16_Employee FROM LAB_USER;

REVOKE SELECT ON P16_Employee FROM LAB_USER;