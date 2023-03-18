/* 1. concat + concat_ws */
/* SELECT *	FROM books;
SELECT CONCAT(author_fname, " ", author_lname) as author_fullname from books;
SELECT CONCAT_WS(" ",author_fname, author_lname) as author_fullname from books; */

/* substring */
/* SELECT SUBSTRING("Hello world", -3) */
/* SELECT SUBSTRING(title, 1, 15) as title_sub from books; */
/* SELECT SUBSTR(title, 1, 15) as title_sub from books; */
/* SELECT SUBSTR(title, 1, 1) as initials from books; */