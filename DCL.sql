-- =====================================================
-- PROGRAM 32
-- DCL
-- =====================================================

CREATE TABLE P32_Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Marks NUMBER(5,2)
);

INSERT INTO P32_Student VALUES (1, 'Akhila', 91);
INSERT INTO P32_Student VALUES (2, 'Rakesh', 84);
INSERT INTO P32_Student VALUES (3, 'Sneha', 88);

COMMIT;

-- Replace LAB_USER with a valid Oracle username

GRANT SELECT ON P32_Student TO LAB_USER;

GRANT INSERT ON P32_Student TO LAB_USER;

GRANT UPDATE ON P32_Student TO LAB_USER;

REVOKE UPDATE ON P32_Student FROM LAB_USER;

REVOKE INSERT ON P32_Student FROM LAB_USER;

REVOKE SELECT ON P32_Student FROM LAB_USER;