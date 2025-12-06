
use movie;
-- retrive --
select * from casting;

-- specific column --
select artist_name from casting;

-- filter -- 
select *from casting WHERE age>30;

-- sort --
select * from technician ORDER BY salary ASC;

-- count --
select count(*) from staff_attendance WHERE present_or_absent = 'absent';

-- limit --
select * from materials limit  2;

select * from technician;
-- group by --
select department, sum(salary)
from technician
group by department;

use movie;
select * from technician;

-- group by --
SELECT expertise, SUM(salary)
FROM technician
GROUP BY expertise;

SELECT expertise, count(*)
FROM technician
GROUP BY expertise having count(*)<2;

use construction;

select status,sum(amount)
from salary
group by status HAVING SUM(amount) > 50000;use construction;

select supplier, count(*) from materials group by supplier;

create database company;
use company;

create table employees(

id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(50),
 department VARCHAR(30),
 salary INT,
 city VARCHAR(30)
);

INSERT INTO employees (name, department, salary, city) VALUES
('Arun','IT',50000,'Chennai'),
('Rahul','IT',60000,'Chennai'),
('Divya','HR',45000,'Madurai'),
('Kumar','HR',70000,'Madurai'),
('Karthi','Finance',55000,'Coimbatore'),
('Meena','IT',75000,'Chennai');


select department, count(*) as persons from employees group by department having count(*) > 2;

-- Easy
select city, count(name) as employees from employees group by city ;

select department, min(salary) from employees group by department;

select city, max(salary) from employees group by city;


select department, sum(salary) as total_dept_salary from employees group by department;


select department, avg(salary) as average_dept_salary from employees group by department;


-- Medium
select department, count(*) as employees from employees group by department having  count(*) > 1;

select city, sum(salary) from employees group by city having SUM(salary) > 100000;


select department, avg(salary) as avg_dept_salary from employees group by department having avg(salary) > 50000;

select city, count(*) as employees from employees group by city having count(*) > 1;

select department, max(salary) as max_salary from employees group by department having max(salary) > 60000;

-- Interview Type
select city, avg(salary) from employees group by city having avg(salary) > (select avg(salary) from employees);

select department,sum(salary) from employees group by department having sum(salary) > 120000;

select department, count(*) from employees where salary > 50000 group by department;

select department,min(salary) from employees group by department having min(salary) > 45000;

select department,AVG(salary) from employees group by department ORDER BY AVG(salary) DESC LIMIT 1;

-- Bonus
select city,count(*) from employees where city LIKE '%i' GROUP BY city;

select city,count(*) from employees where city LIKE 'c%' GROUP BY city;

use company;

alter table employees add transport varchar (20);

update employees set  transport = 'bike' where id in (1,4);
update employees set transport = 'bus' where id in (2,5);
update employees set transport = 'cab' where id in (3,6);