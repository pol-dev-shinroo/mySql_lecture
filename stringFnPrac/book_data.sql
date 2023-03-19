/* 1. concat + concat_ws */
/* SELECT *	FROM books;
 SELECT CONCAT(author_fname, " ", author_lname) as author_fullname from books;
 SELECT CONCAT_WS(" ",author_fname, author_lname) as author_fullname from books; */
/* ************************************************* */
/* 2. substring */
/* SELECT SUBSTRING("Hello world", -3) */
/* SELECT SUBSTRING(title, 1, 15) as title_sub from books; */
/* SELECT SUBSTR(title, 1, 15) as title_sub from books; */
/* SELECT SUBSTR(title, 1, 1) as initials from books; */
/* ************************************************* */
/* 2.2 concat + substring  */
/* select title from books; */
/* select concat(
 substr(title, 1, 10),
 "..."
 ) as short_title
 from books; */
/* select
 concat (
 substr(author_fname, 1, 1),
 ".",
 substr(author_lname, 1, 1),
 "."
 ) as author_initials
 from
 books; */
/* ************************************************* */
/* 2.3 use update */
/* alter table
 books
 add
 column author_initials varchar(10); */
/* update
 books
 set
 author_initials = concat (
 substr(author_fname, 1, 1),
 ".",
 substr(author_lname, 1, 1),
 "."
 ); */
/* ************************************************* */
/* 3. replace */
/* select
 replace(title, "e", "3")
 from
 books; */
/* ************************************************* */
/* 4. reverse */
select
	/* reverse("chicken nucket");
	 
	 select
	 reverse(title) as reverse
	 from
	 books; */