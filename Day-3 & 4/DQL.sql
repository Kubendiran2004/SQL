
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
group by status HAVING SUM(amount) > 50000;




