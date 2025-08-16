-- UPDATE - Modifying Existing Data
-- The UPDATE statement is used to change values in one or more rows.


-- Basic Syntax
 UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;


-- Example: Update One Column
 UPDATE users SET name = 'Alicia' WHERE id = 1;
 --This changes the name of the user with id = 1 to “Alicia”.


-- Example: Update Multiple Columns
 UPDATE users SET name = 'Robert', email = 'robert@example.com' WHERE id = 2;


-- Without WHERE Clause (Warning)
 UPDATE users SET gender = 'Other';
-- This updates every row in the table. Be very careful when omitting the clause.

-- Update the salary of user with users table.
-- 1. id = 5 to ₹70,000.
 UPDATE users SET salary = 70000 WHERE id = 5;

-- 2. Change the name of the user with email  aisha@example.com to Aisha Khan .
 UPDATE users SET name = 'Aisha Khan' WHERE email = 'aisha@example.com';

-- 3. Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
 UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

-- 4. Set the gender of user Ishaan to Other .
UPDATE users SET gender = 'Other' WHERE name = 'Ishaan';

-- 5. Reset salary of all users to ₹50,000 (Careful - affects all rows).
 UPDATE users
 SET salary = 50000
-- this will affect your whole table !!!!!!!!!


-- BEST PRACTICES WHILE UPDATION OF DATA:
   -- Always use WHERE unless and untill you are intentionally updating the data.
   -- Consider running a SELECT with the same WHERE clause to ensure which rows are you going to affect.
SELECT * FROM users WHERE id = 3;
   -- Always back up important data before performing destructive operations.
