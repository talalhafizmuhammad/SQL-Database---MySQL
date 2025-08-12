mkdir sql-learning && cd sql-learning && \
cat << 'EOF' > 01_create_and_use_database.sql
-- CREATE DATABASE Syntax
CREATE DATABASE database_name;

-- Example
CREATE DATABASE IF NOT EXISTS startersql;

-- USE Database Syntax
USE database_name;

-- Example
USE startersql;
EOF

cat << 'EOF' > 02_create_table.sql
-- CREATE TABLE Syntax
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);

-- Example
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
EOF

cat << 'EOF' > 03_select_queries.sql
-- SELECT Syntax
SELECT column1, column2 FROM table_name;
SELECT * FROM table_name;

-- Example
SELECT * FROM users;
EOF

cat << 'EOF' > 04_alter_table.sql
-- Add Column Syntax
ALTER TABLE table_name ADD COLUMN column_name datatype constraints;

-- Example
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Drop Column Syntax
ALTER TABLE table_name DROP COLUMN column_name;

-- Example
ALTER TABLE users DROP COLUMN salary;

-- Modify Column Type Syntax
ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;

-- Example
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- Move Column Position Syntax
ALTER TABLE table_name MODIFY COLUMN column_name datatype AFTER another_column;

-- Example
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;
EOF

cat << 'EOF' > 05_insert_data.sql
-- INSERT Syntax
INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);

-- Example
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('John Doe', 'john@example.com', 'Male', '1990-05-15');
EOF

cat << 'EOF' > 06_update_data.sql
-- UPDATE Syntax
UPDATE table_name SET column1 = value1 WHERE condition;

-- Example
UPDATE users SET is_active = FALSE WHERE id = 1;
EOF

cat << 'EOF' > 07_delete_data.sql
-- DELETE Syntax
DELETE FROM table_name WHERE condition;

-- Example
DELETE FROM users WHERE id = 1;
EOF
