select *
from personal_info;
select *
from employee_detail;


select *
from personal_info
where first_name like 'm_%'
;


select first_name, last_name
from employee_detail
where salary >= 17000
;


select first_name, last_name, salary, dep.company_id
from employee_detail as det
join  employee_department as dep on det.dep_id = dep.dep_id;


select * from employee_department;
select * from employee_detail;



select first_name, last_name
from personal_info
union all
select first_name, last_name
from employee_detail;


select first_name, last_name, 'nice age' as Label
from personal_info
where age > 22
union
select first_name, last_name, 'Highly Paid' as Label
from employee_detail
where salary >= 18000
order by first_name
;


with cte_example as
(select company_name, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary)count_sal
from employee_detail det
join personal_info info
	on det.ID = info.ID
group by company_name
)
select * from cte_example
;
