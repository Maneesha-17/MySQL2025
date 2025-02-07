USE myfirstdatabase;

SELECT p_name, p_age FROM people WHERE p_height > 180;
SELECT p_name, p_age FROM people WHERE p_height > 180 AND p_age > 40;
SELECT p_name, p_age FROM people WHERE p_height > 180 OR p_age > 40;
