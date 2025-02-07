USE myfirstdatabase;

update people set p_age = 30, p_height = 156 where p_id = 1;
delete from people where p_name = 'James';

insert into people(p_id, p_name, p_height) values (10, 'James', 167.87);

alter table people modify column p_height integer;
alter table people rename p_height to p_height_in_lbs;
alter table people add p_weight float;

alter table people drop p_weight;

select * from people;