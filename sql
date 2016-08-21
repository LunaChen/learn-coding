SQL Lessons

SQL: Structured Query Language 
Standard data managment language
manage data stored in relational databases

List of SQL Command https://www.codecademy.com/articles/sql-commands?r=master
SQLite Relational Database Management System (RDBMS)

>>> BetterWorks Uses PostgreSQL

PostgreSQL is an open source SQL database that is not controlled by any corporation. It is typically used for web application development.

PostgreSQL shares many of the same advantages of MySQL. It is easy to use, inexpensive, reliable, and has a large community of developers. It also provides some additional features such as foreign key support without requiring complex configuration.

The main disadvantage of PostgreSQL is that it is slower in performance than other databases such as MySQL. It is also less popular than MySQL which makes it harder to come by hosts or service providers that offer managed PostgreSQL instances.


>>> SQL Intro

Clause: in capital letters / referred to as commands

SELECT * FROM table_name 
	-> return all the contents in the database
SELECT col FROM table_name
	-> return all the contents in that col
	-> SELECT statements return a new table called the Result Set

CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER); 
	-> Create a table
	-> table name is "celebs"
	-> parameter is a list of cols, data types, or values passed to a clause as an argument

INSERT INTO table_name (parameter)
VALUE (data);
	-> inser data into the table

UPDATE table_name
SET parameter = value
WHERE id = whichRow;
	-> edit a row in tha table

ALTER TABLE table_name ADD COLUMN col_name type;
	-> add a new column to the table
	-> NULL: special value representing missing or unknown 

DELETE FROM table_name 
WHERE col_name IS NULL;
	-> Delete rows based on the value of col_name


>>> Queries

SELECT col1, col2 FROM table_name;
	-> return contenst in multiple cols

SELECT DISTINCT col FROM table_name;
	-> return unique values in the col

SELECT * FROM table_name
WHERE col > value;
	-> filter the result based on the col value

SELECT * FROM table_name
WHERE col LIKE 'xx_xx';
	-> filter the result based on a specific pattern
	-> '-' can be substituted by anything

SELECT * FROM table_name
WHERE col LIKE 'a%';  
	-> a%: start with 'a'
	-> %a: end with 'a'
	-> %man%: contains 'man'
	-> not case sensitive

SELECT * FROM table_name
WHERE name BETWEEN 'A' AND 'J'
AND genre = 'cmoedy';
	-> filter the result set within a certain range 
	-> 'A' AND 'J': begin with letters 'A' up to but not including 'j'
	-> AND / OR: multiple clauses

SELECT * FROM table_name
ORDER BY col DESC
LIMIT 3;
	-> sorting the results
	-> DESC: descending order (high to low / Z-A)
	-> ASC: ascending order (low to high / A-Z)
	-> LIMIT: mx number of rows in the result set


>>> Aggregate Functions

SELECT COUNT(*) FROM table_name
WHERE col = value;
	-> COUNT: count the number of rows

SELECT col, COUNT(*) FROM table_name
GROUP BY col;
	-> arrange identical data into groups
	-> shows col unique value & counts 

SELECT SUM(vol) FROM table_name;
	-> sum of all the values in that col

SELECT MAX(col) FROM table_name;
SELECT MIN(col) FROM table_name;
SELECT AVG(col) FROM table_name;
SELECT ROUND(col, INTEGER) FROM table_name;
	-> MAX: max value
	-> MIN: min value
	-> AVG: average value
	-> ROUND: rounds the value to the number of decimal places specified by the INTEGER


>>> Multiple Tables

CREATE TABLE table_name(id INTEGER PRIMARY KEY, name TEXT);
	-> PRIMARY KEY: unique identifier 
	-> A table cannot have more than one PRIMARY KEY
	-> foreign key: hold the value of another table primary key
	-> foreign key: not need to be unique and can be NULL

SELECT table_name1.col_name1, table_name2.col_name2 FROM table_name1, table_name2

SELECT *
FROM table_name1
JOIN table_name2 ON
	table_name1.col_name1 = table_name2.col_name2;
	-> SELECT all contents in table_name1
	-> add table_name2
	-> match rows by conditions (values in col_name1 & col_name2 - primary key)
	-> innter join: combine rows when JOIN condition is TRUE

SELECT *
FROM table_name1
LEFT JOIN table_name2 ON
	table_name1.col_name1 = table_name2.col_name2;
	-> outer join 
	-> if the join condition is not met, NULL to fill

SELECT table_name.col_name AS 'new_col_name' FROM table_name;





