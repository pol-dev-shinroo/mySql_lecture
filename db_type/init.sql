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