use myfirstdatabase;

create table if not exists another_people (
    p_id int primary key,
    p_name varchar(225) not null,
    p_age INT DEFAULT 21 CHECK (p_age >= 0 AND p_age < 200),
    p_ssn char(32) unique

);

insert into another_people (p_id, p_name) values (1, 'James');

-- insert into another_people (p_id, p_name) values (1, 'mike');
-- ERROR 1062 (23000) at line 13: Duplicate entry '1' for key 'another_people.PRIMARY'

insert into another_people (p_id, p_name, p_age, p_ssn) values (3, 'Jane', 25, 'AH88129');

-- insert into another_people (p_id, p_name, p_age, p_ssn) values (3, 'angela', 54, 'AH88129');
-- ERROR 1062 (23000) at line 16: Duplicate entry 'AH88129' for key 'another_people.p_ssn'

insert into another_people (p_id, p_name, p_age, p_ssn) values (3, 'angela', 54, 'AH58129');

-- insert into another_people (p_id, p_name, p_age, p_ssn) values (4, 'John', -10, 'AH3429');
-- ERROR 3819 (HY000) at line 23: Check constraint 'another_people_chk_1' is violated.

-- insert into another_people (p_id, p_name, p_age, p_ssn) values (4, 'John', 300, 'AH3429');
-- ERROR 3819 (HY000) at line 26: Check constraint 'another_people_chk_1' is violated.

select * from another_people;