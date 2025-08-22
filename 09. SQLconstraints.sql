--MySQL CONSTRAINTS

-- Constraints in MySQL are rules applied to table columns to ensure the accuracy, validity, and integrity of the data.
-- 1. UNIQUE Constraint
 -- Ensures that all values in a column are different.
 -- Example (during table creation):
     CREATE TABLE users (
     id INT PRIMARY KEY,
        email VARCHAR(100) UNIQUE
     );
      -- Add UNIQUE using ALTER TABLE :

        ALTER TABLE users
       ADD CONSTRAINT unique_email UNIQUE (email);
--  2.  NOT NULL Constraint
--  Ensures that a column cannot contain NULL values.
-- Example:
     CREATE TABLE users (
     id INT PRIMARY KEY,
        name VARCHAR(100) NOT NULL
     );
 -- Change an existing column to NOT NULL:
     ALTER TABLE users
     MODIFY COLUMN name VARCHAR(100) NOT NULL;
 -- Make a column nullable again:
     ALTER TABLE users
     MODIFY COLUMN name VARCHAR(100) NULL;
 -- 3. CHECK Constraint
 -- Ensures that values in a column satisfy a specific condition.
 -- Example: Allow only dates of birth after Jan 1, 2000
     ALTER TABLE users
     ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');
 -- Naming the constraint (chk_dob) helps if you want to drop it later.
 -- 4. DEFAULT Constraint
 -- Sets a default value for a column if none is provided during insert.
-- Example:
     CREATE TABLE users (
     id INT PRIMARY KEY,
        is_active BOOLEAN DEFAULT TRUE
     );
-- Add DEFAULT using ALTER TABLE :

    ALTER TABLE users
    ALTER COLUMN is_active SET DEFAULT TRUE;
 -- 5. PRIMARY KEY Constraint
 -- Uniquely identifies each row. Must be NOT NULL and UNIQUE.
 -- Example:
     CREATE TABLE users (
     id INT PRIMARY KEY,
        name VARCHAR(100)
     );
 Add later with ALTER TABLE :
 
    ALTER TABLE users
    ADD PRIMARY KEY (id);
 -- 6. AUTO_INCREMENT
 -- Used with PRIMARY KEY to automatically assign the next number.
-- Example:
     CREATE TABLE users (
     id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100)
     );
 -- Each new row gets the next available integer value in id .
 /* Summary Table
 Constraint              Purpose
 UNIQUE                  Prevents duplicate values
 NOT NULL                Ensures value is not NULL
 CHECK                   Restricts values using a condition
 DEFAULT                 Sets a default value
 PRIMARY KEY             Uniquely identifies each row
 AUTO_INCREMENT          Automatically generates unique numbers
*/
 
