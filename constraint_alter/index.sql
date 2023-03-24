/* ****************************** */
/* 1. unique */
/* CREATE TABLE contacts (
 name VARCHAR(100) NOT NULL,
 phone VARCHAR(15) NOT NULL UNIQUE
 );
 
 INSERT INTO
 contacts (name, phone)
 VALUES
 ('billybob', '8781213455');
 
 -- This insert would result in an error:
 INSERT INTO
 contacts (name, phone)
 VALUES
 ('billybob', '8781213455'); */
/* ****************************** */
/* 2. check */
/* CREATE TABLE users (
 username VARCHAR(20) NOT NULL,
 age INT CHECK (age > 0)
 );
 
 CREATE TABLE palindromes (
 word VARCHAR(100) CHECK(REVERSE(word) = word)
 ) */
/* ****************************** */
/* 2. checked constraint (useful for warnings) */
/* CREATE TABLE users2 (
 username VARCHAR(20) NOT NULL,
 age INT,
 CONSTRAINT age_not_negative CHECK (age >= 0)
 );
 
 CREATE TABLE palindromes2 (
 word VARCHAR(100),
 CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
 ); */
/* ****************************** */
/* 3. multiple column constraint (for duplicates or combinations) */
/* CREATE TABLE companies (
 name VARCHAR(255) NOT NULL,
 address VARCHAR(255) NOT NULL,
 CONSTRAINT name_address UNIQUE (name, address)
 );
 
 CREATE TABLE houses (
 purchase_price INT NOT NULL,
 sale_price INT NOT NULL,
 CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
 ); */
/* ****************************** */
/* 4. alter (add) */
/* ALTER TABLE
 companies
 ADD
 COLUMN phone VARCHAR(15);
 
 ALTER TABLE
 companies
 ADD
 COLUMN employee_count INT NOT NULL DEFAULT 1; */
/* ****************************** */
/* 4. alter (delete/drop) */
/* ALTER TABLE
 companies DROP COLUMN phone; */
/* ****************************** */
/* 4. alter (rename) */
/* RENAME TABLE companies to suppliers;
 
 ALTER TABLE
 suppliers RENAME TO companies;
 
 ALTER TABLE
 companies RENAME COLUMN name TO company_name; */
/* ****************************** */
/* 4. alter (modify vs change (column name + data type)) */
/* ALTER TABLE
 companies
 MODIFY
 company_name VARCHAR(100) DEFAULT 'unknown';
 
 ALTER TABLE
 suppliers CHANGE business biz_name VARCHAR(50); */
/* ****************************** */
/* 4. alter (add and drop constraint) */
/* ALTER TABLE
 houses
 ADD
 CONSTRAINT positive_pprice CHECK (purchase_price >= 0);
 
 ALTER TABLE
 houses DROP CONSTRAINT positive_pprice; */