/* ****************************** */
/* 1. logical operators */
/* SELECT
 *
 FROM
 books
 WHERE
 released_year != 2017; */
/* SELECT
 *
 FROM
 books
 WHERE
 released_year > 2005;
 
 SELECT
 *
 FROM
 books
 WHERE
 pages > 500; */
/* SELECT
 *
 FROM
 books
 WHERE
 pages < 200;
 
 SELECT
 *
 FROM
 books
 WHERE
 released_year < 2000;
 
 SELECT
 *
 FROM
 books
 WHERE
 released_year <= 1985; */
/* ****************************** */
/* 2. Logical AND */
/* SELECT
 title,
 author_lname,
 released_year
 FROM
 books
 WHERE
 released_year > 2010
 AND author_lname = 'Eggers';
 
 SELECT
 title,
 author_lname,
 released_year
 FROM
 books
 WHERE
 released_year > 2010
 AND author_lname = 'Eggers'
 AND title LIKE '%novel%'; */
/* ****************************** */
/* 3. Logical OR  */
/* SELECT
 title,
 pages
 FROM
 books
 WHERE
 CHAR_LENGTH(title) > 30
 AND pages > 500;
 
 SELECT
 title,
 author_lname
 FROM
 books
 WHERE
 author_lname = 'Eggers'
 AND released_year > 2010;
 
 SELECT
 title,
 author_lname,
 released_year
 FROM
 books
 WHERE
 author_lname = 'Eggers'
 OR released_year > 2010;
 
 SELECT
 title,
 pages
 FROM
 books
 WHERE
 pages < 200
 OR title LIKE '%stories%'; */
/* ****************************** */
/* 4. in */
/* SELECT
 title,
 author_lname
 FROM
 books
 WHERE
 author_lname = 'Carver'
 OR author_lname = 'Lahiri'
 OR author_lname = 'Smith';
 
 SELECT
 title,
 author_lname
 FROM
 books
 WHERE
 author_lname IN ('Carver', 'Lahiri', 'Smith'); */
/* ****************************** */
/* 5. case */
/* SELECT
 title,
 released_year,
 CASE
 WHEN released_year >= 2000 THEN 'modern lit'
 ELSE '20th century lit'
 END AS genre
 FROM
 books;
 
 SELECT
 title,
 stock_quantity,
 CASE
 WHEN stock_quantity BETWEEN 0
 AND 40 THEN '*'
 WHEN stock_quantity BETWEEN 41
 AND 70 THEN '**'
 WHEN stock_quantity BETWEEN 71
 AND 100 THEN '***'
 WHEN stock_quantity BETWEEN 101
 AND 140 THEN '****'
 ELSE '*****'
 END AS stock
 FROM
 books;
 
 SELECT
 title,
 stock_quantity,
 CASE
 WHEN stock_quantity <= 40 THEN '*'
 WHEN stock_quantity <= 70 THEN '**'
 WHEN stock_quantity <= 100 THEN '***'
 WHEN stock_quantity <= 140 THEN '****'
 ELSE '*****'
 END AS stock
 FROM
 books; */