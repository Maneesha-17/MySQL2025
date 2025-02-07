# MySQL2025

## MySQL Commands and Queries

### Connecting to MySQL
```sh
sudo apt update
sudo apt install mysql-server -y
sudo service mysql start
mysql --version
sudo mysql -u root < filename.sql
```

## Database Management

- **Show all databases**
  ```sql
  SHOW DATABASES;
  ```

- **Create a new database**
  ```sql
  CREATE DATABASE database_name;
  ```

- **Use a database**
  ```sql
  USE database_name;
  ```

- **Drop (delete) a database**
  ```sql
  DROP DATABASE database_name;
  ```

## Table Management

- **Show all tables**
  ```sql
  SHOW TABLES;
  ```

- **Create a new table**
  ```sql
  CREATE TABLE table_name (
      id INT PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(50) NOT NULL,
      age INT,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );
  ```

- **Describe table structure**
  ```sql
  DESC table_name;
  ```

- **Alter table (add a column)**
  ```sql
  ALTER TABLE table_name ADD COLUMN email VARCHAR(100);
  ```

- **Modify column type**
  ```sql
  ALTER TABLE table_name MODIFY COLUMN age INT NOT NULL;
  ```

- **Rename a column**
  ```sql
  ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name VARCHAR(50);
  ```

- **Rename a table**
  ```sql
  RENAME TABLE old_table_name TO new_table_name;
  ```

- **Drop (delete) a table**
  ```sql
  DROP TABLE table_name;
  ```

## Data Manipulation (CRUD)

- **Insert data into a table**
  ```sql
  INSERT INTO table_name (name, age) VALUES ('Alice', 25);
  ```

- **Insert multiple rows**
  ```sql
  INSERT INTO table_name (name, age) VALUES 
  ('Bob', 30),
  ('Charlie', 28);
  ```

- **Select all records**
  ```sql
  SELECT * FROM table_name;
  ```

- **Select specific columns**
  ```sql
  SELECT name, age FROM table_name;
  ```

- **Select with conditions**
  ```sql
  SELECT * FROM table_name WHERE age > 25;
  ```

- **Update data**
  ```sql
  UPDATE table_name SET age = 26 WHERE name = 'Alice';
  ```

- **Delete data**
  ```sql
  DELETE FROM table_name WHERE name = 'Charlie';
  ```

- **Truncate (delete all rows but keep structure)**
  ```sql
  TRUNCATE TABLE table_name;
  ```

## Advanced Queries

- **Sorting results**
  ```sql
  SELECT * FROM table_name ORDER BY age DESC;
  ```

- **Group By**
  ```sql
  SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;
  ```

- **Limit results**
  ```sql
  SELECT * FROM table_name LIMIT 5;
  ```

- **Count rows**
  ```sql
  SELECT COUNT(*) FROM table_name;
  ```

- **Find unique values**
  ```sql
  SELECT DISTINCT column_name FROM table_name;
  ```

- **Aggregate functions**
  ```sql
  SELECT AVG(age) AS average_age, SUM(age) AS total_age FROM table_name;
  ```

## Joins

- **Inner Join**
  ```sql
  SELECT users.name, orders.amount 
  FROM users 
  INNER JOIN orders ON users.id = orders.user_id;
  ```

- **Left Join**
  ```sql
  SELECT users.name, orders.amount 
  FROM users 
  LEFT JOIN orders ON users.id = orders.user_id;
  ```

- **Right Join**
  ```sql
  SELECT users.name, orders.amount 
  FROM users 
  RIGHT JOIN orders ON users.id = orders.user_id;
  ```

- **Full Join (Using UNION)**
  ```sql
  SELECT users.name, orders.amount 
  FROM users 
  LEFT JOIN orders ON users.id = orders.user_id
  UNION
  SELECT users.name, orders.amount 
  FROM users 
  RIGHT JOIN orders ON users.id = orders.user_id;
  ```

## Transactions

- **Start a transaction**
  ```sql
  START TRANSACTION;
  ```

- **Rollback (undo changes)**
  ```sql
  ROLLBACK;
  ```

- **Commit (save changes)**
  ```sql
  COMMIT;
  ```

## Indexing

- **Create an index**
  ```sql
  CREATE INDEX idx_name ON table_name (column_name);
  ```

- **Show indexes**
  ```sql
  SHOW INDEX FROM table_name;
  ```

- **Drop an index**
  ```sql
  DROP INDEX idx_name ON table_name;
  ```

## Backup & Restore

- **Backup a database**
  ```sh
  mysqldump -u root -p database_name > backup.sql
  ```

- **Restore a database**
  ```sh
  mysql -u root -p database_name < backup.sql
  
