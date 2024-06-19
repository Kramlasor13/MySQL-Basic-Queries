select * from personal_info;
select * from employee_detail;
select * from employee_department;


delimiter $$
create trigger employee_insert
	after insert on employee_detail
    for each row
begin
    insert into employee_department (company_name, dep_id)
    values (new.company_name, new.dep_id);
end $$
delimiter ;



insert into employee_detail(first_name, last_name, hire_date, possition, salary, company_name, dep_id)
values
('Grace', 'Senador', '2015-06-04', 'Manager', 48962, 'San Miguel Corporation', 5);


select * from personal_info;

delimiter $$
create event delete_retirees
on schedule every 30 second
do 
begin
	select * from personal_info
    where age >=26;
end $$
delimiter ;


show variables like 'event%';



