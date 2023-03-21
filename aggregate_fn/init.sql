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
/* ************************************************* */
/* 6. combining group by with min and max */
/* select
 author_fname,
 author_lname,
 min(released_year) as first_book,
 max(released_year) as last_book,
 count(*) as total_books,
 max(pages) as longest_pages
 from
 books
 group by
 author_fname,
 author_lname; */
/* ************************************************* */
/* 7. sum */
/* select
 author_fname,
 author_lname,
 sum(pages) as total_pages,
 count(*) as books_count
 from
 books
 GROUP BY
 author_fname,
 author_lname */
/* ************************************************* */
/* 8. average */
/* select
 released_year,
 count(*) as total_books_in_a_year,
 avg(stock_quantity),
 std(stock_quantity)
 from
 books
 group by
 released_year
 order by
 released_year; */
/* ************************************************* */
/* 9. exercise */
/* print the numbers of books in the db */
/* select
 count(*) as total_books
 from
 books
 where
 title is not null; */
/* print out how many books were relased in each year */
/* select
 released_year,
 count(*) as total_books
 from
 books
 group by
 released_year; */
/* print out the total number of books in stock */
/* select
 stock_quantity,
 count(*) as books
 from
 books
 group by
 stock_quantity; */
/* find the average released_year for each author */
/* select
 author_fname,
 author_lname,
 avg(released_year) as avg_released_year
 from
 books
 group by
 author_fname,
 author_lname; */
/* find the full name of the author who wrote the longest book */
/* select
 concat(author_lname, ' ', author_fname),
 pages
 from
 books
 where
 pages = (
 select
 max(pages)
 from
 books
 ); */
/* group by year and return no of books and avg pages */
/* select
 released_year,
 count(*) as no_books,
 avg(pages) as avg_pages
 from
 books
 where
 title is not null
 group by
 released_year
 order by
 released_year */