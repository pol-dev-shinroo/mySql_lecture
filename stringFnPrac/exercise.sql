/* 1 */
/* select
 reverse(
 upper("Why does my cat look at me with such hatred")
 ) as reverse_upper */
/* 2 */
/* select
 replace(title, " ", "->") as replace_title
 from
 books; */
/* 3 */
/* select
 author_lname as forwards,
 reverse(author_lname) as backwards
 from
 books; */
/* 4 */
/* select
 concat(author_fname, ' ', author_lname) as "full name in caps"
 from
 books; */
/* 5 */
/* select
 concat(title, " was released in ", released_year) as 'blurb'
 from
 books; */
/* 6 */
/* select
 title,
 char_length(title) as "character count"
 from
 books; */
/* 7 */
/* select
 concat(substr(title, 1, 10), "...") as "short_title",
 concat(author_lname, ',', author_fname),
 concat(stock_quantity, ' in stock') as "quantity"
 from
 books; */