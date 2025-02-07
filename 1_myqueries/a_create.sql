CREATE DATABASE IF NOT EXISTS myfirstdatabase;
USE myfirstdatabase;

CREATE TABLE IF NOT EXISTS people (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(255),
    p_age INTEGER,
    p_height FLOAT
);

SELECT * FROM people;

INSERT INTO people (p_id, p_name, p_age, p_height) values (3, 'Anna', 28, 189),
(4, 'Kate', 38, 178),
(5, 'James', 48, 182),
(6, 'Samuel', 55, 164),
(7, 'Lisa', 30, 178);
INSERT INTO people values (2, 'John', 78, 180);

select * from people;



