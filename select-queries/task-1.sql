CREATE TABLE employees50 (
    EMPLOYEE_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(255),
    LAST_NAME VARCHAR(255),
    EMAIL VARCHAR(255),
    PHONE_NUMBER VARCHAR(255),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(255),
    SALARY DECIMAL(10, 2),
    COMMISSION_PCT DECIMAL(5, 2),
    MANAGER_ID INT,
    DEPARTMENT_ID INT
);
 
INSERT INTO employees50 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000.00, 0.00, 0, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', 17000.00, 0.00, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', 17000.00, 0.00, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', 9000.00, 0.00, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', 6000.00, 0.00, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', 4800.00, 0.00, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', 4800.00, 0.00, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', 4200.00, 0.00, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', 12000.00, 0.00, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', 7700.00, 0.00, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', 7800.00, 0.00, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', 6900.00, 0.00, 108, 100),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', 8300.00, 0.00, 205, 110);

SELECT * FROM employees50;

task1

CREATE TABLE alias(
first_name varchar(20),
last_name varchar(20)
);

SELECT  first_name AS First_Name,last_name AS Last_Name FROM alias;


task2

CREATE TABLE employe19(
first_name varchar(20),
last_name varchar(20),
departament_ID int,
UNIQUE(departament_ID)
);


task3

CREATE TABLE employe3(
first_name varchar(20),
last_name varchar(20),
id int,
job_id int
);

DESC employe3;


task4

CREATE TABLE employe12(
first_name varchar(20),
last_name varchar(20),
salary decimal(20)
);
INSERT  INTO  employe12 VALUES('iko','lukava','20');
SELECT first_name,last_name,salary,salary *.15 PF FROM employe12;	



task5

CREATE TABLE employe13(
first_name varchar(20),
last_name varchar(20),
salary decimal(20)
);

INSERT  INTO  employe13 VALUES('iko','lukava','0'),('lika','zarandia','1000'),('niko','lukava','100');
SELECT *FROM employe13 ORDER BY salary ASC;


task6
SELECT  SUM(SALARY)  FROM employees50;


task7
 SELECT SALARY FROM employees50 where salary = (SELECT max(SALARY)FROM employees50);
 SELECT SALARY FROM employees50 where salary = (SELECT min(SALARY)FROM employees50);


task8
SELECT AVG(SALARY) FROM employees50;


task9
SELECT  count(*) FROM employees50;


taks10
SELECT COUNT(DISTINCT JOB_ID)  FROM employees50;


task11
SELECT UPPER(FIRST_NAME) FROM employees50;


task12
SELECT 171*214+625;


task13
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID FROM employees50 LIMIT 10;
