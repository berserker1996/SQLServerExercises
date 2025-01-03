Create table Employees (employee_id int, name varchar(30))
Create table Salaries (employee_id int, salary int)
Truncate table Employees
insert into Employees (employee_id, name) values ('2', 'Crew')
insert into Employees (employee_id, name) values ('4', 'Haven')
insert into Employees (employee_id, name) values ('5', 'Kristian')
Truncate table Salaries
insert into Salaries (employee_id, salary) values ('5', '76071')
insert into Salaries (employee_id, salary) values ('1', '22517')
insert into Salaries (employee_id, salary) values ('4', '63539')

select e.employee_id 
from Employees e
left outer join Salaries s
on e.employee_id = s.employee_id
where s.salary is null
UNION
select s.employee_id 
from Salaries s
left outer join Employees e
on e.employee_id = s.employee_id
where e.name is null
order by employee_id;


