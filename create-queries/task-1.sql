-- 1 and 2 task.
 create table countries6(
     country_id INT,
     country_name VARCHAR(20),
     region_id INT
 );
 
 INSERT  INTO  countries VALUES(1,'Georgia',10);
 INSERT  INTO  countries VALUES(2,'Argentina',9);
 
 SELECT * FROM countries;


-- 3 task.
 create table dup_countries0(
     country_id INT,
     country_name VARCHAR(20),
     region_id INT
 );
 
 INSERT  INTO  dup_countries VALUES(1,'Paris',8);
 
 SELECT * FROM dup_countries;

-- 4 task.
 create table country10(
     country_id INT,
     country_name VARCHAR(20),
     country_date DATE,
     region_id INT
 );
 
 INSERT  INTO  country10 VALUES(1,'Paris',8, 00-20-2005);
 
 SELECT * FROM country10;

-- 5 task.
 CREATE TABLE country112(
     country_id INT not NULL,
     country_name VARCHAR(20) not NULL,
     region_id INT not NULL
 );

 INSERT  INTO  country112 VALUES(1,'German',8);

 SELECT * FROM country112;


-- 6 task.
 CREATE TABLE job (
     job_id INT ,
     job_title VARCHAR(20),
     min_salary DECIMAL(10, 2),
     max_salary DECIMAL(10, 2),
     CHECK (max_salary <= 25000)
 );


-- 7 task.
 CREATE TABLE countriesz (
     country_id INT NOT NULL,
     country_name VARCHAR(255),
     region_id INT,
     CHECK (country_name IN ('Italy', 'India', 'China'))
 );


-- 8 task.
 CREATE TABLE job_history (
     employee_id INT,
     start_date DATE NOT NULL,
     end_date VARCHAR(10) CHECK(end_date LIKE '--/--/----'),
     job_id INT,
     department_id INT
 );


-- 9 task.
 CREATE TABLE countriesw (
     country_id INT NOT NULL,
     country_name VARCHAR(255),
     region_id INT,
     UNIQUE (country_id)
 );


-- 10 task.
 CREATE TABLE jobsS (
     job_id INT ,
     job_title VARCHAR(20),
     min_salary DECIMAL(10, 2) DEFAULT 8000,
     max_salary DECIMAL(10, 2)
 );


-- 11 task.
 create table countries1(
     country_id INT,
     country_name VARCHAR(20),
     region_id INT,
     UNIQUE(country_id)
 );


-- 12 task.
 CREATE TABLE countries2 (
     country_id INT PRIMARY KEY,
     country_name VARCHAR(255),
     region_id INT,
     UNIQUE (country_id)
 );


-- 13 task.
 CREATE TABLE countries3 (
     country_id INT,
     country_name VARCHAR(255),
     region_id INT,
     UNIQUE (country_id, region_id)
 );
