-- Basic Insertion in table 
-- Note: Values must be in the same order as columns in the table.

USE mydatabase1;

INSERT INTO customers
VALUES (1, 'Ali Khan', 'ali@example.com', 'Karachi', 'Pakistan');

-- Insertion at specific columns

USE mydatabase1;

INSERT INTO customers (id, name, email, city, country)
VALUES (2, 'Sara Ahmed', 'sara@example.com', 'Lahore', 'Pakistan');


-- INSERT Multiple Rows at Once

USE mydatabase1;

INSERT INTO customers (id, name, email, city, country)
VALUES 
(3, 'Ahmed Raza', 'ahmed@example.com', 'Islamabad', 'Pakistan'),
(4, 'Fatima Noor', 'fatima@example.com', 'Multan', 'Pakistan');

-- Insert from another table

USE mydatabase1;

INSERT INTO customers (id, name, email, city, country)
SELECT id, name, email, city, country
FROM old_customers;

