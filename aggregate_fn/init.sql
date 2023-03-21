/* ************************************************* */
/* 1. count */
/* select
 count(*)
 from
 books; */
/* select
 count(title)
 from
 books; */
/* select
 count(author_fname)
 from
 books;
 
 select
 count(distinct author_fname)
 from
 books; */
/* select
 count(*)
 from
 books
 where
 title like '%the%' */
/* ************************************************* */
/* 2. group by */
/* select
 author_lname,
 count(*) as books_written
 from
 books
 GROUP BY
 author_lname
 order by
 books_written desc; */
/* select
 author_lname,
 released_year,
 count(*)
 from
 books
 group by
 author_lname,
 released_year; */
/* ************************************************* */
/* 3. min and max */
/* select
 min(released_year)
 from
 books; */
/* select
 max(pages)
 from
 books; */
/* ************************************************* */
/* 4. subquery */
/* select
 title,
 released_year
 from
 books
 where
 title is not null
 and released_year = (
 select
 max(released_year)
 from
 books
 ) */
/* ************************************************* */
/* 5. multiple group by */
/* select
 author_fname,
 author_lname,
 count(*) as count
 from
 books
 group by
 author_fname,
 author_lname
 order by
 count desc */
/* select
 author_lname,
 count(*) as count
 from
 books
 group by
 author_lname
 order by
 count desc */