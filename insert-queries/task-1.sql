CREATE TABLE  countries0 ( 
country_id varchar(2) NOT NULL ,
country_name varchar(40) NOT NULL,
region_id decimal(10,0) NOT NULL
);

INSERT INTO countries0 VALUES('1','Georgia',1000);

SELECT * FROM countries0;


task2
CREATE TABLE  countries9( 
country_id varchar(2) ,
country_name varchar(40) ,
region_id Int
);

INSERT INTO countries9 (country_id , country_name) VALUES('1','Georgia');

SELECT * FROM countries9;


task3
CREATE TABLE  countries100( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40),
DATE_COLUMN date,
REGION_ID INT
);

INSERT INTO countries100  VALUES('1', 'Georgia', '2024-02-12', 0);

SELECT * FROM countries100;


task4
CREATE TABLE  countries99( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40),
DATE_COLUMN date,
REGION_ID INT
);

INSERT INTO countries99  VALUES('1', 'Georgia', '2024-02-12', NULL);

SELECT * FROM countries99;


task5
CREATE  TABLE cityy(
country_id varchar(20),
country_name varchar(20),
region_id INT
);

INSERT  INTO cityy VALUES('1','Zugdidi',1),('2','Tbilisi',2),('3','Batumi',3);
SELECT  * FROM cityy;


task6
CREATE TABLE country_newww(
country_id varchar(20),
country_name varchar(20),
region_id int
);

INSERT INTO country_newww VALUES('C0001','India',1001),('C0002', 'USA', 1007), ('C0003', 'UK', 1003);
SELECT * FROM country_newww;


task7
CREATE  TABLE jobs22(
job_id INT UNIQUE PRIMARY KEY,
job_name varchar(20)
);

INSERT  INTO jobs22(job_id , job_name)VALUES(00,'LINUX');

SELECT *FROM jobs22;


task8
CREATE TABLE job22(
job_id INT UNIQUE KEY,
job_name varchar(20)
);

INSERT  INTO job22(job_id,job_name)VALUES(00,'programmer');
SELECT  * FROM job22;


task9
CREATE TABLE country7(
country_id INT,
country_name VARCHAR(255),
region_id INT,
PRIMARY KEY(country_id)
);

INSERT  INTO country7 VALUES(1,'India',1);
SELECT  * FROM country7;


task10
CREATE TABLE countries55 (
country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(255) 
);

INSERT  INTO  countries55(country_name) VALUES('Georgia'),('Italy'),('portugal');
SELECT * FROM countries55; 

