/*---------------------How to create a TABLE----------------------------*/

CREATE TABLE employes10(
employes_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
hourly_pay DECIMAL(5, 2),
hire_date DATE
);

ALTER TABLE employes10 add phone_number VARCHAR(15);  /*დავუმატეთ ნომრის მოსათავსებელი ადგილი ბაზაში.*/
ALTER TABLE employes10 RENAME COLUMN phone_number TO email;  /*ნომრის ბაზას გადავარქვით სახელი როგორც ემაილი.*/
ALTER  TABLE employes10 MODIFY COLUMN email VARCHAR(100);  /*ემაილს შევუცვალეთ ე.წ ვარჩარის რაოდენობა.*/
ALTER TABLE employes10 MODIFY email VARCHAR(100) AFTER last_name;  /*ემაილი დავაყენეთ ბაზაში უფრო უკან.*/
ALTER TABLE employes10 DROP COLUMN email; /*ასე კი იშლება ჩვენი მონაცემის ბაზიდან მონაცემი,ამ შემთხვევაში ემაილი.*/
RENAME TABLE workers1 TO employes10;/*თუ როგორ გადავარქვათ თეიბლს სახელი.*/

SELECT  * FROM  employes10; 


/*--------------------How to insert rows into a TABLE----------------------*/

INSERT INTO employes10 (employes_id,first_name,last_name) VALUES(5,'სპარი','შუგარდადი');/*როცა არასაკმარისი მონაცემები შეგყავს ბაზაში...მოვნიშნოთ იმ მონაცემის სახელწოდებები რომლებიც გვაქ მოცემული.მაგ:first_name-სპარი*/                     

SELECT  * FROM  employes10; 


/*-------------------How to select data from a table -------------------------------*/

SELECT  * FROM  employes10 WHERE hourly_pay >= 15; /*ამოგვიგდოს მონაცემი სადაც გადახდა 15 ლარს ზემოთ განხორციელდა*/
SELECT  * FROM  employes10 WHERE hire_date <= '2022-02-19'; /*ამოგვიგდოს მონაცემები რომლებიც 2022-02-19-ამდე განხორციელდა*/ 
SELECT  * FROM  employes10 WHERE employes_id !=1;/*ამოგვიგდოს ის მონაცემები რომლებშიც აიდი '1' არ უდრის */


/*-----------------How to UPDATE and DELETE data from a TABLE------------------*/

UPDATE employes10 SET hourly_pay = 10.50,hire_date='2023-01-07' WHERE employes_id = 6;
SELECT * FROM employes10;

DELETE FROM  employes10   WHERE employes_id = 6;
SELECT * FROM employes10;


--ROLLBACK/*შეგვიძლია დავაბრუნოთ წაშლილი ქუერრი*/

CREATE TABLE test(
my_date DATE,
my_time TIME,
my_datetime DATETIME
);
INSERT INTO test VALUES(CURRENT_DATE(),CURRENT_TIME(),NOW());
SELECT * FROM test;


/*------------------------UNIQUE---------------------*/

CREATE TABLE products(
product_id INT,
product_name VARCHAR(25),
price DECIMAL(4,2)
);
ALTER TABLE products ADD CONSTRAINT UNIQUE(product_name);
INSERT  INTO  products VALUES (100,"humburger",5.99),
                              (101,"fries",3.99),
                              (102,"ice ctream",2.99),
                              (103,"soda",6.99),
                              (104,"cake",10.99);
SELECT * FROM products;/*როცა ჩვენ გვაქვს უნიკალურის ნიშანი მაგალითად ახლა პროდუქტის სახელთან,არ შეგვიძლია თეიბლში ერთნაერი სახელები იქნეს გამოყენებული*/


/*------------------NOT NULL---------------------------*/

CREATE TABLE products1(
product_id INT,
product_name VARCHAR(25),
price DECIMAL(4,2) NOT NULL /*ესეიგი ჩვენ არ შეგვიძლია რომ ვალუეში მონაცემის გარეშე დავტოვოთ ფასი-price*/
);


/*-----------------------PRIMARY KEY AUTO_INCREMENT-------------------*/

CREATE TABLE translactions(
translaction_id INT PRIMARY KEY AUTO_INCREMENT,
amount DECIMal(5,2)
);
INSERT  INTO translactions(amount) VALUES(3.69);
ALTER  TABLE translactions AUTO_INCREMENT = 1000;
/*ახლა ჩვენ რომ წავშალოთ ტრანსლაცქიის თეიბლი და გავცეთ ბრძანება აიდი დაიწყება 1000-ით,შემდეგ 1001,1002 და ა.შ.ავტომატურად იწერება მისი აიდი*/
SELECT * FROM translactions;


/*---------------------JOYN-------------------------------------*/

SELECT  * FROM translactions INNER JOIN customers ON translactions.customer_id = customers.customer_id;
/*ჩვენ Inner jpin-ით შეგვიძლია ორი მონაცემთა ბაზის დაკავშირება და ამისთვის საჭიროა რომ ორივეს მონაცები თეიბლიდან ასე მოვიყვანოთ.ხოლო მარჯვენა და მარცხენა ჯოინები ადგილს განიხილავენ მხოლოდ*/



/*-------------------------------functions-----------------------------*/

SELECT COUNT(amount) as "TODAY'S TRANSACTION'S" FROM translactions  ;
SELECT MAX(amount)AS MAXIMUM FROM translactions  ;
SELECT MIN(amount)AS MINIMUM FROM translactions  ;
SELECT AVG(amount)AS AVERGE FROM translactions  ;
SELECT SUM(amount)AS SUM FROM translactions  ;
SELECT  CONCAT(first_name," ",last_name)AS full_name FROM employees50;
SELECT * FROM employees ;



/*-------------------logical operators------------------------*/

alter table employes10 add column job varchar(25) after hourly_pay;/*დავამატეთ ახალი მონაცემის ქოლუმი*/

update employes10 set job ="shef" WHERE employes_id = 4;/* მივანიჭEთ თითოეულ პირს თავისი ჯობი აიდის საშუალებით*/

select * from employes10 WHERE  job="cook" or job="shef";/*შეგვიძლია გგამოვიყენოთ კონკრეტული მონაცემის მოსაძებნად*/

select * from employes10 WHERE  NOT job="cook" and not job="shef";

select * from employes10 WHERE  hire_date BETWEEN  '2022-01-09' and '2024-08-12';

select * from employes10 WHERE  job in ('cook','shef');



/*--------------------------wild cards-------------------------*/

SELECT  * FROM  employes10  WHERE HIRE_DATE LIKE  "2023%";


/*-------------------------ORDER BY---------------------------*/

SELECT  * from employes10 ORDER BY last_name  DESC;
SELECT  * from employes10 ORDER BY last_name  ASC ;



/*-------------------------Limit clause---------------------*/

SELECT  * FROM  employes10 LIMIT 2;



/*---------------------UNION------------------------*/

SELECT   first_name,last_name  from employes10 UNION ALL select first_name ,last_name  from employees50 ;
/*ეს არის კომბინაცია ორი მაგიდის ერთ სელექთში,როგორც მაგალითში ჩანს*/


/*----------------------SELF JOINS--------------------*/

SELECT  * FROM employes10;




