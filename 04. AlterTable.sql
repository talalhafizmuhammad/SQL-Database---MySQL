-- Add Column
-- Adding Columns to the table
ALTER TABLE <table_name> ADD COLUMN <col_name> <data_type> <values>
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Drop Column
-- Deleting columns from the existing table
ALTER TABLE <table_name> DROP COLUMN <col_name>;
ALTER TABLE users DROP COLUMN salary;

-- Modify Column Type
-- Modification of the columns' data type of table
ALTER TABLE <table_name> MODIFY COLUMN <col_name> <new_data_type>;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- Move Column Position
ALTER TABLE users MODIFY COLUMN data_of_birth DATETIME FIRST;
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;
