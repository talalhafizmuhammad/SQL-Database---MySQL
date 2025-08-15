-- Querying Data in MySQL using SELECT
 -- The SELECT statement is used to query data from a table.
 -- Basic Syntax
 SELECT column1, column2 FROM table_name;
 -- To select all columns:
 SELECT * FROM users;
 --Filtering Rows with WHERE and Equal To
 SELECT * FROM users WHERE gender = 'Male';
 -- Not Equal To
 SELECT * FROM users WHERE gender != 'Female';-- or
 SELECT * FROM users WHERE gender <> 'Female';
-- Greater Than / Less Than
 SELECT * FROM users WHERE date_of_birth < '1995-01-01';
 SELECT * FROM users WHERE id > 10;
 -- Greater Than or Equal / Less Than or Equal
 SELECT * FROM users WHERE id >= 5;
 SELECT * FROM users WHERE id <= 20;
 -- Working with NULL/IS NULL
 SELECT * FROM users WHERE date_of_birth IS NULL;
 -- IS NOT NULL
 SELECT * FROM users WHERE date_of_birth IS NOT NULL;
 -- BETWEEN
 SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
-- IN
 SELECT * FROM users WHERE gender IN ('Male', 'Other');
 -- LIKE (Pattern Matching)
 SELECT * FROM users WHERE name LIKE 'A%';-- Starts with A
 SELECT * FROM users WHERE name LIKE '%a';-- Ends with a
 SELECT * FROM users WHERE name LIKE '%li%';-- Contains 'li'
 -- AND / OR
 SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
 SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';
-- ORDER BY
 SELECT * FROM users ORDER BY date_of_birth ASC;
 SELECT * FROM users ORDER BY name DESC;
 -- LIMIT
 SELECT * FROM users LIMIT 5;-- Top 5 rows
 SELECT * FROM users LIMIT 10 OFFSET 5;-- Skip first 5 rows, then get next 10
 SELECT * FROM users LIMIT 5, 10;-- Get 10 rows starting from the 6th row (Same as above)
 SELECT * FROM users ORDER BY created_at DESC LIMIT 10;
