USE testwork;
CREATE TABLE PERSONAL_INFO(
ID INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
birth_date Date,
age INT,
contact_number VARCHAR(50) NOT NULL,
email_address VARCHAR(50) NOT NULL
);

CREATE TABLE EMPLOYEE_DETAIL(
ID INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
hire_date DATE,
possition VARCHAR(50) NOT NULL,
salary DECIMAL (10,2)
);

alter table employee_detail
add column dep_id INT;

alter table employee_detail
add column company_id INT,
add column company_name varchar(50);
show columns from employee_detail;
select * from employee_detail;



CREATE TABLE EMPLOYEE_DEPARTMENT(
company_id INT AUTO_INCREMENT PRIMARY KEY,
company_name varchar(50),
dep_id int
);

select * from employee_department;