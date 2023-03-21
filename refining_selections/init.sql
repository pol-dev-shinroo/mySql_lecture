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
/* select
 author_fname,
 author_lname,
 released_year
 from
 books
 order by
 1,
 3 desc; */
/* *************************************************** */
/* 3. limit */
/* select
 author_fname,
 author_lname,
 pages,
 released_year
 from
 books
 order by
 4 desc
 limit
 1, 5; */
/* *************************************************** */
/* 4. like */
/* select
 author_fname,
 author_lname
 from
 books
 where
 author_fname like '%da%' */
/* select
 author_fname,
 author_lname
 from
 books
 where
 author_fname like '%' */
/* select
 author_fname,
 author_lname
 from
 books
 where
 author_fname like '_____' */