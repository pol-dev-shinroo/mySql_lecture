/* *************************************************** */
/* 1. distinct */
/* select
 distinct author_lname
 from
 books; */
/* select
 distinct released_year
 from
 books;
 */
/* *************************************************** */
/* 1.2 distinct combination */
/* select
 distinct concat(author_fname, ' ', author_lname)
 from
 books; */
/* select
 distinct author_fname,
 author_lname,
 released_year
 from
 books; */
/* *************************************************** */
/* 2. order by */
select
 author_fname,
 author_lname,
 released_year
from
 books
order by
 released_year desc;