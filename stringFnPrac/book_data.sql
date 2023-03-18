/* 1. concat + concat_ws */
SELECT *	FROM books;
SELECT CONCAT(author_fname, " ", author_lname) as author_fullname from books;
SELECT CONCAT_WS(" ",author_fname, author_lname) as author_fullname from books;