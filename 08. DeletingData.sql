-- DELETE - Removing Data from a Table
-- The DELETE statement removes rows from a table.
 -- Basic Syntax
 DELETE FROM table_name WHERE condition;

 -- Example: Delete One Row
 DELETE FROM users WHERE id = 3;

 -- Delete Multiple Rows
 DELETE FROM users WHERE gender = 'Other';

 -- Delete All Rows (but keep table structure)
 DELETE FROM users;

 -- Drop the Entire Table (use with caution, since it will DELETE the whole table)
 DROP TABLE users;

-- BEST PRACTICES WHILE DELETION OF DATA:
   -- Always use WHERE unless and untill you are intentionally deleting the data.
   -- Consider running a SELECT with the same WHERE clause to ensure which rows are you going to affect.
SELECT * FROM users WHERE id = 3;
   -- Always back up important data before performing destructive operations.
