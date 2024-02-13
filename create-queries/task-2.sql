 task14
 CREATE TABLE job_history (
     employee_id INT NOT NULL,
     start_date DATE NOT NULL,
     end_date DATE NOT NULL,
     job_id VARCHAR(10),
     department_id INT,
     PRIMARY KEY (employee_id, start_date),
     FOREIGN KEY (job_id) 
 );


 task15
 CREATE TABLE employes4(
 employe_id Int Primary key,
 first_name varchar(20),
 last_name varchar(20),
 email varchar(25),
 phone_number varchar(20),
 hire_date date,
 job_id INT ,
 slary decimal(20),
 commission decimal(20),
 manager_id INT,
 departament_id INT ,
 FOREIGN KEY (department_id,manager_id) REFERENCES departments (departament_id,manager_id)
 );

 DESC employes4;


 task16

 CREATE TABLE IF NOT EXISTS  employees0 (
     employee_id INT PRIMARY KEY,
     first_name VARCHAR(50),
     last_name VARCHAR(50),
     email VARCHAR(100),
     phone_number VARCHAR(20),
     hire_date DATE,
     job_id VARCHAR(10),
     salary DECIMAL(10, 2),
     commission DECIMAL(10, 2),
     manager_id INT,
     department_id DECIMAL(4, 0),
     FOREIGN KEY (department_id) REFERENCES departments (departament_id),
     FOREIGN KEY (job_id) REFERENCES jobs (job_id)
 );


 task17
 CREATE TABLE IF NOT EXISTS employees (
     employee_id INT NOT NULL UNIQUE PRIMARY KEY,
     first_name VARCHAR(50) NOT NULL,
     last_name VARCHAR(50) NOT NULL,
     job_id INT,
     salary DECIMAL(10,2),
     FOREIGN KEY (job_id) REFERENCES jobs(JOB_ID) ON UPDATE CASCADE ON DELETE RESTRICT
 );


 task18
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT NOT NULL UNIQUE PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (job_id) REFERENCES jobs(JOB_ID) ON UPDATE CASCADE ON DELETE RESTRICT
) ;


task19
CREATE TABLE IF NOT EXISTS employees (
    employee_id INTEGER NOT NULL UNIQUE PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INTEGER,
    salary DECIMAL(10,2),
    CONSTRAINT job_id FOREIGN KEY (job_id) REFERENCES jobs(JOB_ID) 
    ON DELETE SET NULL ON UPDATE SET NULL
);


task20
CREATE TABLE IF NOT EXISTS employees (
    employee_id INTEGER NOT NULL UNIQUE PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INTEGER,
    salary DECIMAL(10,2),
    CONSTRAINT job_id FOREIGN KEY (job_id) REFERENCES jobs(JOB_ID) 
    ON DELETE NO ACTION ON UPDATE NO ACTION
);









