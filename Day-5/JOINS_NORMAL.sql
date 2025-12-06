create database Register;
use Register;

create table Teachers(
teacher_id int primary key,
teacher_name varchar(30),
teacher_phn int
);


create table Students(
stu_id int primary key,
stu_name varchar(30),
class varchar(10),
teacher_id int,
foreign key (teacher_id) references Teachers (teacher_id)
);

alter table Teachers modify teacher_phn varchar(11);

delete from Teachers where teacher_id=1;

insert into Teachers (teacher_id,teacher_name,teacher_phn) values (1, 'Anitha', '63548740153');

INSERT INTO Students (stu_id, stu_name, class, teacher_id)
VALUES (101, 'Kavin', '5A', 1);

INSERT INTO Students (stu_id, stu_name, class, teacher_id)
VALUES (102, 'Priya', '5A', 1);

INSERT INTO Students (stu_id, stu_name, class, teacher_id)
VALUES (103, 'Manoj', '5A', 1);

-- inner join
select students.stu_id,students.stu_name,students.class, Teachers.teacher_name,Teachers.teacher_phn
from Students join Teachers on students.teacher_id = Teachers.teacher_id;

insert into Teachers(teacher_id,teacher_name,teacher_phn) values (2, 'sunitha', '97517637436'), (3, 'vanitha', '92540740548');

-- left join
select * from Students left join Teachers  ON Students.teacher_id = Teachers.teacher_id;

update Students set teacher_id = 2 where stu_id = 102;

update Students set teacher_id = 3 where stu_id = 103;

update Students set teacher_id = 1 where stu_id = 101;

-- right join
select * from Students right join Teachers on Students.teacher_id = Teachers.teacher_id;

update Students set teacher_id = null where stu_id = 103;

-- full join 
select * from Students left join Teachers  ON Students.teacher_id = Teachers.teacher_id

union

select * from Students right join Teachers on Students.teacher_id = Teachers.teacher_id;


alter table Students add contact_no varchar(11);



update Students set contact_no = '97451740548' where stu_id= 101;

update Students set contact_no = '6381665604' where stu_id= 102;

update Students set teacher_id = 3 where stu_id = 103;


SELECT * FROM Students WHERE contact_no IS NULL;


select *,COALESCE(contact_no,'no parent contact numeber')from Students;