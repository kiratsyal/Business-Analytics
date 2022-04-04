CREATE TABLE emptbl
(Empid VARCHAR2(4) NOT NULL,
empname CHAR(20) NOT NULL,
deptid NUMBER(2, 0) NOT NULL,
deptname CHAR(5) NOT NULL,
DoJ DATE NOT NULL,
Desgn CHAR(15) NOT NULL,
YoJ NUMBER(4, 0) NOT NULL,
Salary NUMBER  NOT NULL,
PRIMARY KEY(Empid),
CONSTRAINT CHK_Desgn CHECK (Desgn = 'CEO' OR Desgn = 'CIO' OR Desgn = 'Manager' OR Desgn = 'Clerk' OR Desgn = 'IT Manager'));


INSERT INTO emptbl VALUES ('E201', 'Ravi', 10, 'HR', '02-NOV-17', 'Clerk', 2017, 56000);
INSERT INTO emptbl VALUES ('E202', 'cyril', 20, 'HR', '07-APR-08', 'Clerk', 2017, 56000);
INSERT INTO emptbl VALUES ('E203', 'kirat', 10, 'LOS', '19-NOV-11', 'IT Manager', 2017, 45000);
INSERT INTO emptbl VALUES ('E204', 'priya', 10, 'IT', '13-APR-14', 'IT Manager', 2017, 45000);
INSERT INTO emptbl VALUES ('E205', 'joyth', 20, 'IT', '23-NOV-21', 'CEO', 2017, 100000);
INSERT INTO emptbl VALUES ('E206', 'Tina', 10, 'IT', '26-APR-18', 'Manager', 2017, 76000);
INSERT INTO emptbl VALUES ('E207', 'bunny', 20, 'IT', '30-NOV-16', 'Manager', 2017, 76000);
INSERT INTO emptbl VALUES ('E208', 'cyric', 10, 'IT ', '16-APR-19', 'CIO', 2017, 78000);

SELECT * FROM emptbl;

SELECT DISTINCT desgn FROM emptbl;

SELECT * FROM emptbl WHERE YoJ > 2010;

SELECT * FROM emptbl WHERE deptid = 20 OR deptid = 10;

SELECT * FROM emptbl WHERE desgn = 'Clerk' OR deptid = 10;

SELECT * FROM emptbl WHERE empname = 'Tina';

SELECT * FROM emptbl WHERE desgn = 'Manager';

SELECT * FROM emptbl WHERE desgn ='IT manager' AND Salary > 75000;

