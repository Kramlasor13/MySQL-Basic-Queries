-- temporary table

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movies varchar(50)
);

select * from temp_table;

insert into temp_table
values ('MarkoPolo', 'Rosal', 'One Piece Movie');



create temporary table highly_paid
select * from employee_detail
where salary > 18000;

select * from highly_paid;

