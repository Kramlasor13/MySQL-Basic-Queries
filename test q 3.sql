
create procedure large_salaries ()
select * from employee_detail
where salary >= 18000;

call large_salaries ();


drop procedure if exists salary_label;

delimiter $$
create procedure salary_label()
begin
	select * from employee_detail
    where salary >= 20000;
    select * from employee_detail
    where salary <=20000;
    select * from employee_detail
    where salary >=1000;
end $$
delimiter ;

call salary_label();


drop procedure if exists salary_label2;
delimiter $$
create procedure salary_label2(employee_id int)
begin
	select * from employee_detail
    where ID = employee_id;
end $$
delimiter ;

call salary_label2(3);
