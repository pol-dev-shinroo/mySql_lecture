/* 1. primary + foreign key */
/* create table customers (
 id int primary key auto_increment,
 first_name varchar(50) NOT NULL,
 last_name varchar (50) NOT NULL,
 email varchar(50)
 );
 
 create table orders (
 id int primary key auto_increment,
 order_data date,
 amount decimal(8, 2),
 customer_id int,
 FOREIGN KEY (customer_id) REFERENCES customers(id)
 ); */
/* INSERT INTO
 customers (first_name, last_name, email)
 VALUES
 ('Boy', 'George', 'george@gmail.com'),
 ('George', 'Michael', 'gm@gmail.com'),
 ('David', 'Bowie', 'david@gmail.com'),
 ('Blue', 'Steele', 'blue@gmail.com'),
 ('Bette', 'Davis', 'bette@aol.com'); */
INSERT INTO
 orders (order_date, amount, customer_id)
VALUES
 ('2016-02-10', 99.99, 1),
 ('2017-11-11', 35.50, 1),
 ('2014-12-12', 800.67, 2),
 ('2015-01-03', 12.50, 2),
 ('1999-04-11', 450.25, 5);