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