
INSERT INTO personal_info(first_name, last_name, birth_date, age, contact_number, email_address)
VALUES 
('Mark', 'Rosal','1997-01-13',27,'09393658875','markrosal@gmail.com'),
('Myra', 'Nazaria','1998-01-03',26,'09471080733','myranazaria@gmail.com'),
('Edson', 'Nazaria','1994-04-22',30,'09465869925','edsonnazaria@gmail.com');

INSERT INTO personal_info (first_name, last_name, birth_date, age, contact_number, email_address)
VALUES 
('Charles', 'Reyes', '2000-10-09',23,'09463658775','charlesreyes@gmail.com'),
('Lenard', 'Gonzales', '2000-01-31',24,'09463656541','lenardgonzales@gmail.com'),
('Thoper', 'Belista', '1996-12-22',27,'09091579934','thoper123@gmail.com');


truncate table personal_info;

SELECT * FROM personal_info;
SELECT * FROM employee_detail;

INSERT INTO employee_detail(first_name, last_name, hire_date, possition, salary,dep_id)
VALUES
('Mark', 'Rosal', '2023-04-18', 'Admin','17800',6),
('Myra', 'Nazaria', '2023-07-28', 'Office Manager','18000',5),
('Edson', 'Nazaria', '2022-01-13', 'Kitchen Staff','15200',4);

INSERT INTO employee_detail(first_name, last_name, hire_date, possition, salary,dep_id)
VALUES
('Charles', 'Reyes', '2023-04-18', 'Admin','17800',6),
('Lenard', 'Gonzales', '2020-07-13', 'Acountant','36000',3),
('Thoper', 'Belista', '2022-10-28', 'IT Associate','22000',1);

select * from employee_detail;

update employee_detail
set company_name =
case
	when ID = 1 then 'Great Sieera Development Corporation'
    when ID = 2 then 'The Roof Garden Catering Services'
    when ID = 3 then 'Papa Johns Restuarant'
	when ID = 6 then 'Great Sieera Development Corporation'
    when ID = 4 then 'The Roof Garden Catering Services' 
    when ID = 5 then 'San Miguel Corporation' 
    else null
end
where ID between 1 and 6;


alter table employee_detail
drop column company_id;

alter table employee_detail
modify column dep_id int after company_name;



truncate  employee_detail;


insert into employee_department (company_name, dep_id)
select company_name, dep_id from employee_detail;

select * from employee_department;
truncate employee_department;





