-- SQL Functions (MySQL)
 /*SQL functions help you analyze, transform, or summarize data in your tables.
 We’ll use the users table which includes:
 id, name, email, gender, date_of_birth, salary, created_at.*/
 -- 1. Aggregate Functions
 -- These return a single value from a set of rows.
COUNT()
    -- Count total number of users:
     SELECT COUNT(*) FROM users;
     Count users who are Female:
     SELECT COUNT(*) FROM users WHERE gender = 'Female';
MIN() and MAX()
 -- Get the minimum and maximum salary:
     SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
SUM()
-- Calculate total salary payout:
     SELECT SUM(salary) AS total_payroll FROM users;
AVG()
-- Find average salary:
     SELECT AVG(salary) AS avg_salary FROM users;
-- Grouping with 
GROUP BY
-- Average salary by gender:
     SELECT gender, AVG(salary) AS avg_salary
     FROM users
     GROUP BY gender;
-- 2. String Functions
LENGTH()
-- Length of user names:
     SELECT name, LENGTH(name) AS name_length FROM users;
LOWER() and UPPER()
-- Convert names to lowercase or uppercase:
     SELECT name, LOWER(name) AS lowercase_name FROM users;
     SELECT name, UPPER(name) AS uppercase_name FROM users;
CONCAT()
-- Combine name and email:
     SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;
-- 3. Date Functions
NOW()
-- Current date and time:
     SELECT NOW();
-- YEAR() , MONTH() , Extract parts of DAY()
-- date_of_birth :
     SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
DATEDIFF()
-- Find number of days between today and birthdate:
     SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
 TIMESTAMPDIFF()
-- Calculate age in years:
     SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;
-- 4. Mathematical Functions
ROUND() , FLOOR() , CEIL()
SELECT salary,
       ROUND(salary) AS rounded,
       FLOOR(salary) AS floored,
       CEIL(salary) AS ceiled
 FROM users;
MOD()
-- Find even or odd user IDs:
     SELECT id, MOD(id, 2) AS remainder FROM users;
-- 5. Conditional Functions
IF()
  SELECT name, gender,
       IF(gender ='Female','Yes','No') AS is_female
   FROM users;
 /*
Summary Table
 Function     Purpose
 COUNT()      Count rows
 SUM()        Total of a column
 AVG()        Average of values
 MIN()/MAX()  Lowest / highest value
 LENGTH()     String length
 CONCAT()     Merge strings  
 YEAR()/DATEDIFF() Date breakdown / age
 ROUND()      Rounding numbers
 IF()         Conditional logic
*/
