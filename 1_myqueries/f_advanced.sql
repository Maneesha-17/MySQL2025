use myfirstdatabase;

select * from people;

select p_age from people;

select distinct p_age from people;
-- distinct - don't show duplicates

select * from people where p_age in(55, 65);

select * from people where p_name like 'mike';
select * from people where p_name like 's%';
select * from people where p_name like '%n';
select * from people where p_name like '%n%';

select p_name as Name, p_age as Age from people;

-- # Aggregate functions
select sum(p_age) as Age from people;
select max(p_age) as Age from people;
select avg(p_age) as Age from people where p_height_in_lbs = 158;
select min(p_age) as Age from people;
select sum(p_age) as Age from people;

select count(p_age) as count from people;
-- if there is null, then it doesn't count it as a row

SELECT p_name, AVG(p_height_in_lbs) FROM people GROUP BY p_age, p_name;

SELECT MIN(p_name) AS sample_name, AVG(p_height_in_lbs) FROM people 
GROUP BY p_age;

SELECT GROUP_CONCAT(p_name) AS names, AVG(p_height_in_lbs)FROM people
GROUP BY p_age;

select * from people order by p_age;
select * from people order by p_age desc, p_name;
select * from people order by p_name, p_age desc;

select * from people limit 5;
select * from people order by p_age limit 5;

