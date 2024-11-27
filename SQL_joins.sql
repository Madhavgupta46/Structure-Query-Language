create database joins;
use joins;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50),
dept_id int,
salary int);

insert into employee(emp_name,dept_id,salary)
values("Alice",101,6000),
      ("Bob",102,7000),
      ("Charlie",103,8000),
      ("David",101,7500),
      ("Eve",102,8500);

create table departments(
dept_id int,
dept_name varchar(50));

insert into departments(dept_id,dept_name)
values(101,"HR"),
      (102,"Sales"),
      (103,"IT"),
      (104,"Marketing");
      
create table projects(
project_id int,
project_name varchar(30),
dept_id int);

insert into projects(project_id,project_name,dept_id)
values(1,"Project A", 101),
      (2,"Project B",102),
      (3,"Project C",103),
      (4,"Project D",104);
      
select e.emp_name,d.dept_name
from employee e
inner join departments d
on e.dept_id=d.dept_id;

#select column from table inner/left/right join table2 on coulmns;

select employee.emp_name,departments.dept_name 
from departments 
Left Join employee 
on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name 
from employee 
Left Join departments 
on departments.dept_id = employee.dept_id;

select employee.emp_name as "employee name",departments.dept_name as "department name" 
from employee 
Inner Join departments 
on departments.dept_id = employee.dept_id;

##ans1
select emp_name ,dept_name
from employee 
inner Join departments 
on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name 
from departments 
Left Join employee 
on departments.dept_id = employee.dept_id;

##ans 2
select emp_name, e.emp_name, e.salary,d.dept_name
from employee e
join departments d
on e.dept_id = d.dept_id
where dept_name = 'sales';

##ans 3
select project_name,dept_name
from projects 
inner join departments 
on projects.dept_id=departments.dept_id;

##ans 4
select emp_name, salary 
from employee e
inner join departments d
on e.dept_id=d.dept_id
where salary>7500
and dept_name="IT";

###ans 5
select d.dept_name, count(emp_name)
from employee e
left join departments d
on e.dept_id=d.dept_id
group by dept_name;

###ans 6
select d.dept_name, sum(salary) as total_salary
from employee e
left join departments d
on e.dept_id=d.dept_id
group by dept_name;

###ans7
select dept_name,emp_name
from employee e
right join departments d
on e.dept_id=d.dept_id
where emp_name is null;

##ans 8
select emp_name,project_name
from employee e
left join projects p
on e.dept_id=p.dept_id;

##ans9
select emp_name,project_name,dept_name
from employee e
right join departments d
on e.dept_id=d.dept_id
left join projects p
on e.dept_id=p.dept_id
where dept_name="HR";

###ans 10
select dept_name,count(project_name) as project_count
from departments d
left join projects p
on d.dept_id=p.dept_id
group by dept_name
having count(project_name)=1;

###ans11
select dept_name,count(emp_name),count(project_name) as project_count
from employee e
right join departments d
on e.dept_id=d.dept_id
left join projects p
on e.dept_id=p.dept_id
group by dept_name
having count(project_name)=1;

###ans12
select dept_name,count(emp_name) as No_of_employee ,count(project_name) as No_of_project
from employee e
right join departments d
on e.dept_id=d.dept_id
left join projects p
on d.dept_id=p.dept_id
group by dept_name;

###ans 13
select dept_name,sum(salary) as total_salary ,count(emp_id) as NO_of_employee
from employee e
right join departments d
on e.dept_id=d.dept_id
left join projects p
on d.dept_id=p.dept_id
group by dept_name
having count(emp_id)>=2;
