/* ****************************** */
/* 1. char vs varchar */
/* create table states (abbr char(2)); */
/* insert into
 states (abbr)
 values
 ("C"); */
/* CHAR is faster for fixed length text */
/* Otherwise use VARCHAR */
/* ****************************** */
/* 2. int, tinyint, bigint */
/* the range differs among them, check the documentation */
/* create table parent (children tinyint unsigned); */
/* ****************************** */
/* 3. Decimals  */
/* drop table parent;
 create table parent (children decimal(5, 2)); */
/* insert into
 parent(children)
 values
 (123123.12123); */
/* show warnings; */
/* ****************************** */
/* 4. date, time, datetime, curdate, current_time, now */
/* drop table parent;
 create table parent (birthdate date, birthtime time, birthdt datetime); */
/* select
 curdate(); */
/* select
 current_time; */
/* select
 now(); */
/* insert into
 parent (name, birthdate, birthtime, birthdt)
 values
 (
 upper("peter"),
 curdate(),
 current_time(),
 now()
 ); */
/* ****************************** */
/* 5. date functions */
/* select
 birthdate,
 day(birthdate),
 dayofweek(birthdate),
 dayofyear(birthdate),
 monthname(birthdate),
 dayname(birthdate),
 hour(birthdate),
 second(birthdate)
 from
 parent; */
/* ****************************** */
/* 6. date formatting (using specifier) */
/* select
 date_format(birthdate, '%a'),
 date_format(birthdate, '%b'),
 date_format(birthdate, '%c')
 from
 parent; */
/* ****************************** */
/* 7. date maths */
/* select
 birthdate,
 datediff(curdate(), birthdate)
 from
 parent; */
/* select
 date_add(curdate(), interval 1 year); */
/* select
 date_add(curdate(), interval 1 month); */
/* select
 date_sub(curdate(), interval 9 year); */
/* select
 now() - interval 27 year; */
/* select
 birthdate,
 year(birthdate + interval 10 year)
 from
 parent; */
/* ****************************** */
/* 8. timestamp */
/* timestamp is date + time */
/* difference between timestamp and datetime is that timestamp takes less memory (smaller range) = trend */
/* create table parent (
 text varchar(200),
 created_at timestamp default current_timestamp
 ); */
/* insert into
 parent (text)
 values
 ("hello"); */
/* alter table
 parent
 add
 column updated_at timestamp on update current_timestamp; */
/* update
 parent
 set
 text = "updated"; */
/* ****************************** */
/* 9. exercise */
/* create table inventory (
 item_name varchar(20),
 price int unsigned default 0,
 quantity mediumint unsigned default 0
 ); */
/* create table tweets(
 content varchar(200),
 username varchar(30),
 created_at timestamp default now()
 ) */