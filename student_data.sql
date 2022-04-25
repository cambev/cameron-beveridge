create table physics_results(
first_name varchar (255),
last_name varchar (255),
test_result int,
test_percentage int,
);


insert into physics_results (first_name, last_name, test_result, test_percentage)
values ('matt', 'j', 50, 50)
insert into physics_results (first_name, last_name, test_result, test_percentage)
values ('sarah', 'k', 22, 22)
insert into physics_results (first_name, last_name, test_result, test_percentage)
values ('john', 's', 38, 38)
insert into physics_results (first_name, last_name, test_result, test_percentage)
values ('milha', 'm', 66, 66)
insert into physics_results (first_name, last_name, test_result, test_percentage)
values ('ruby', 'n', 72, 72)


select test_percentage
from physics_results
order by test_percentage asc;


select *
from physics_results
order by last_name asc;



select *
from physics_results
order by test_percentage asc;

select first_name, test_percentage
from physics_results
order by test_percentage asc;



