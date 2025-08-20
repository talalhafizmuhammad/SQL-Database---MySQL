# SQL Learning Repository

This repository contains my SQL practice notes and query examples, organized from beginner to advanced topics.  
The queries are based on my learning journey and cover a wide range of SQL features.

---

## Topics Covered

1. **Setup & Installation** – Installing MySQL and setting up the environment  
2. **Database Operations** – `CREATE DATABASE`, `DROP DATABASE`, `USE`  
3. **Table Operations** – `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`  
4. **Data Types & Constraints** – `INT`, `VARCHAR`, `ENUM`, `DECIMAL`, `DATE`, `TIMESTAMP`, `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `DEFAULT`  
5. **CRUD Operations** – `SELECT`, `INSERT`, `UPDATE`, `DELETE`  
6. **Advanced Alterations** – Adding, dropping, modifying, and reordering columns  
7. **Functions & Transactions** – Built-in functions, `COMMIT`, `ROLLBACK`  
8. **Keys & Joins** – Primary & foreign keys, `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`  
9. **Set Operations & Views** – `UNION`, self-joins, `CREATE VIEW`  
10. **Indexes, Subqueries, Aggregations** – `INDEX`, `GROUP BY`, `HAVING`  
11. **Stored Procedures & Triggers** – Creating and managing procedures, event-driven triggers

---



## MySQL Installation

### Windows
1. Download MySQL Community Server from: https://dev.mysql.com/downloads/mysql/
2. Install using the setup wizard.
3. Add `mysql` to your system PATH (optional for using it from terminal).
4. Verify installation:
   ```bash
   mysql --version
    ```


### Linux (UBUNTU/DEBIAN/ARCH)
```bash
sudo apt update
sudo apt install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
mysql --version
```


### MacOS
```bash
brew install mysql
brew services start mysql
mysql --version
```
---

## HAPPY SQL!
