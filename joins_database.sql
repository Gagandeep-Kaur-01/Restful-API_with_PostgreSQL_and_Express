CREATE DATABASE join_todo;

CREATE TABLE Company(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL,
   JOIN_DATE	  DATE
);

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) 
VALUES (1, 'Paul', 32, 'California', 20000.00,'2001-07-13');
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,JOIN_DATE) 
VALUES (2, 'Allen', 25, 'Texas', '2007-12-13');
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) 
VALUES (3, 'Teddy', 23, 'Norway', 20000.00, DEFAULT );
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) 
VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00, '2007-12-13' ), 
(5, 'David', 27, 'Texas', 85000.00, '2007-12-13');

CREATE TABLE DEPARTMENT(
   ID INT PRIMARY KEY      NOT NULL,
   DEPT           CHAR(50) NOT NULL,
   EMP_ID         INT      NOT NULL
);

INSERT INTO DEPARTMENT (ID, DEPT, EMP_ID)
VALUES (1, 'IT Billing', 1 );

INSERT INTO DEPARTMENT (ID, DEPT, EMP_ID)
VALUES (2, 'Engineering', 2 );

INSERT INTO DEPARTMENT (ID, DEPT, EMP_ID)
VALUES (3, 'Finance', 7 );


SELECT * FROM COMPANY;
SELECT * FROM DEPARTMENT;

SELECT EMP_ID, NAME, DEPT FROM COMPANY JOIN DEPARTMENT
        ON COMPANY.ID = DEPARTMENT.EMP_ID;
SELECT EMP_ID, NAME, DEPT FROM COMPANY CROSS JOIN DEPARTMENT;
SELECT EMP_ID, NAME, DEPT FROM COMPANY INNER JOIN DEPARTMENT
        ON COMPANY.ID = DEPARTMENT.EMP_ID
SELECT EMP_ID, NAME, DEPT FROM COMPANY LEFT OUTER JOIN DEPARTMENT
   ON COMPANY.ID = DEPARTMENT.EMP_ID;
SELECT EMP_ID, NAME, DEPT FROM COMPANY RIGHT OUTER JOIN DEPARTMENT
   ON COMPANY.ID = DEPARTMENT.EMP_ID;
SELECT EMP_ID, NAME, DEPT FROM COMPANY FULL OUTER JOIN DEPARTMENT
   ON COMPANY.ID = DEPARTMENT.EMP_ID;   


