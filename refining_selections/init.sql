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
/* *************************************************** */
/* Exercise */
/* select
 title
 from
 books
 where
 title like '%stories%' */
/* select
 title,
 pages
 from
 books
 order by
 2 desc
 limit
 1; */
/* select
 concat(title, ' - ', released_year) as summary
 from
 books
 where
 title is not null
 order by
 released_year desc
 limit
 3; */
/* select
 title,
 author_lname
 from
 books
 where
 author_lname like '% %' */
/* select
 title,
 released_year,
 stock_quantity
 from
 books
 where
 title is not null
 order by
 3
 limit
 3 */
/* select
 title,
 author_lname
 from
 books
 order by
 2,
 1; */
/* select
 concat(
 upper('my favorite author is '),
 upper(author_lname)
 ) as yell
 from
 books
 order by
 1 */
/* select
 concat (title, ' - ', released_year) as summary
 from
 books
 where
 title is not null
 order by
 released_year desc
 limit
 3 */
select
 title,
 pages
from
 books
order by
 length(title) desc
limit
 1