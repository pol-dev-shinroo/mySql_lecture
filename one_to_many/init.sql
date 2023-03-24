/* ********************************* */
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
/* INSERT INTO
 orders (order_date, amount, customer_id)
 VALUES
 ('2016-02-10', 99.99, 1),
 ('2017-11-11', 35.50, 1),
 ('2014-12-12', 800.67, 2),
 ('2015-01-03', 12.50, 2),
 ('1999-04-11', 450.25, 5); */
/* ********************************* */
/* 2. cross joins (합집합) */
/* select
 *
 from
 orders
 where
 customer_id = (
 select
 id
 from
 customers
 where
 last_name = "George"
 ); */
/* select
 *
 from
 customers,
 orders */
/* ********************************* */
/* 2. inner joins (교집합) */
/* select
 *
 from
 customers
 join orders on customers.id = orders.customer_id; */
/* select
 *
 from
 customers
 inner join orders on orders.customer_id = customers.id; */
/* ********************************* */
/* 3. inner join with group by */
/* select
 first_name,
 last_name,
 sum(amount) as total
 from
 customers
 join orders on customers.id = orders.customer_id
 group by
 first_name,
 last_name
 order by
 total desc; */
/* ********************************* */
/* 4. left / right join (교집합을 포함한 A 또는 B전체 => 순수 A는 null이 나오겠쥬?) */
/* select
 first_name,
 last_name,
 sum(amount) as total
 from
 customers
 left join orders on orders.customer_id = customers.id
 group by
 first_name,
 last_name
 order by
 3 desc; */
/* SELECT
 first_name,
 last_name,
 order_date,
 amount
 FROM
 customers
 Left JOIN orders ON customers.id = orders.customer_id;
 
 SELECT
 first_name,
 last_name,
 order_date,
 amount
 FROM
 customers
 RIGHT JOIN orders ON customers.id = orders.customer_id; */
/* ********************************* */
/* 5. on delete cascade (automatically deletes order when customer is deleted) */
/* ALTER TABLE
 orders
 ADD
 CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE; */