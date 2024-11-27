# by madhav gupta
# ANS 1 creating a database and table named company and employees with given feilds 
create database company;
use company;
#creating a table in company
create table employees(
					   id int primary key auto_increment,
                       name varchar(100),
                       position varchar(100),
                       salary decimal (10,2),
                       date_of_joining date 
					   );
select * from employees ;
# ANS 2 inserting data in table 
insert into employees(id,name,position,salary,date_of_joining)
values(001,"john doe","manager",55000.00,"2020-01-15");
insert into employees(id,name,position,salary,date_of_joining)
values (002,"Jane Smith","Developer",48000.00,"2019-07-10"),
       (003,"Alice Johnson","Designer",45000.00,"2021-03-22"),
       (004,"Bob Brown","Developer",50000.00,"2018-11-01");
select * from employees;
# ANS 3  Query is to select all the employees who are developers
Select *from employees where position="Developer";
# ANS 4  Query is to update the salary to 46000.00 where name is Alice Johnson in table employees
set sql_safe_updates=0;
update employees 
            set salary=46000.00 where name="Alice Johnson";    
# ANS 5  Query is to delete record from employees where name is Bob Brown
delete from employees where name="Bob Brown";
select * from employees;
# ANS 6  Query is to select employees where salary is higher than 48000.00                     
select * from employees where salary>48000;	
#ANS 7   Query is to add a new column email to the employees table
 alter table employees 
		     add email varchar(100);
# ANS 8 Query to update the email for John Doe to john.doe@company.com
update employees 
			set email="john.doe@company.com" where name="John Doe" ;
select * from employees;
# ANS 9 Query to retrieve only the name and salary of all employees
select name,salary from employees;
# ANS 10 Query to count the number of employees who joined after January 1, 2020           
select count(*) from employees where date_of_joining>2020-01-01;
# ANS 11 Query is to select salary in descending order
select *from employees order by salary desc;
# ANS 12 Query is to drop column of email from table employees
alter table employees 
                drop column email;
# ANS 13 Query is to select the highest salry ih the table employees           
select *from employees order by salary desc Limit 1;			       