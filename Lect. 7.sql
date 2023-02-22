-- Lect. 07
-- Commit & Rollback.
use training;

CREATE TABLE CUSTOMER_PLSQL( 
id INTEGER, 
name VARCHAR(100), 
age INTEGER, 
city VARCHAR(100) 
);

INSERT INTO CUSTOMER_PLSQL VALUES(100,'Ram Shankar',35,'Chennai');
INSERT INTO CUSTOMER_PLSQL VALUES(102,'Bala Murugan',30,'Banaglore');
INSERT INTO CUSTOMER_PLSQL VALUES(103,'Prabhakaran',25,'Hyderabad');
INSERT INTO CUSTOMER_PLSQL VALUES(104,'Arun Vetri Maran',40,'Pune');
INSERT INTO CUSTOMER_PLSQL VALUES(105,'Shivani',50,'Delhi');
SELECT * FROM CUSTOMER_PLSQL;

SET sql_safe_updates=0;

UPDATE CUSTOMER_PLSQL SET age=45 WHERE ID=100;

START TRANSACTION;
UPDATE CUSTOMER_PLSQL SET AGE=1000 ;
ROLLBACK;

START TRANSACTION;
UPDATE CUSTOMER_PLSQL SET AGE=100 WHERE ID=101 ;
COMMIT;

START TRANSACTION;
UPDATE CUSTOMER_PLSQL SET city='TRICHY' WHERE ID=102;
ROLLBACK;

START TRANSACTION;
UPDATE CUSTOMER_PLSQL SET city='TRICHY' WHERE ID=101;
COMMIT;

SELECT * FROM CUSTOMER_PLSQL;
START TRANSACTION;
DELETE FROM CUSTOMER_PLSQL WHERE ID=103;
COMMIT;

START TRANSACTION;
DELETE FROM CUSTOMER_PLSQL WHERE ID=102;
ROLLBACK;

START TRANSACTION;
DELETE FROM CUSTOMER_PLSQL WHERE ID=100;
DELETE FROM CUSTOMER_PLSQL WHERE ID=102;
DELETE FROM CUSTOMER_PLSQL WHERE ID=101;
ROLLBACK;
































