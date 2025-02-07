use myfirstdatabase;

create table if not exists student (
    s_id int AUTO_INCREMENT PRIMARY KEY,
    s_name varchar(225),
    s_age int,
    s_height float,
    s_gender enum('male', 'female')
);

-- 1:1
-- 1:n n:1
-- n:n

create table if not exists thing_own(
    t_id int AUTO_INCREMENT PRIMARY KEY,
    t_name varchar(225) not null,
    t_desc varchar(225),
    t_owner int,
    foreign key (t_owner) references student(s_id)
);

create table if not exists owner_ships (
    o_owner int,
    o_thing int, 
    primary key(o_owner, o_thing),
    foreign key(o_owner) references student(s_id),
    foreign key(o_thing) references thing_own(t_id) 
);

INSERT INTO student (s_name, s_age, s_height, s_gender) VALUES
('Alice', 25, 5.6, 'female'),
('Bob', 30, 5.9, 'male'),
('Charlie', 22, 5.8, 'male'),
('Diana', 28, 5.5, 'female'),
('Ethan', 35, 6.0, 'male'),
('Mike', 30, 1.72, 'male');

INSERT INTO thing_own (t_name, t_desc, t_owner) VALUES
('Laptop', 'MacBook Pro 16-inch', 1),
('Bike', 'Ducati Panigale V4', 2),
('Watch', 'Rolex Submariner', 1),
('camera', 'canon', 3),
('Phone', 'iPhone 15 Pro', 4),
('Backpack', 'Samsonite Travel Bag', NULL);

INSERT ignore INTO owner_ships (o_owner, o_thing) VALUES
(1, 1),  
(1, 3),  
(2, 2),
(3, 4),  
(4, 5),  
(2, 5);  

select * from student;
select * from thing_own;
select * from owner_ships;

select s_name, t_name from student inner join thing_own on student.s_id = thing_own.t_owner;

select s_name, t_name from student left join thing_own on student.s_id = thing_own.t_owner;
select s_name, t_name from student right join thing_own on student.s_id = thing_own.t_owner;

select s_name, t_name from student join thing_own on student.s_id = thing_own.t_owner;
-- same as inner join

select s_name, t_name from student cross join thing_own;
