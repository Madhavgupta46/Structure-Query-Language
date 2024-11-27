create database university;

create database university2;

use university;

create table student (id int,name varchar(50),age int);

insert into student(id,name,age) values(1,"sryansh",32);

insert into student(id,name,age) values(2,"madhav",23);

select * from student;

drop database  university2;

drop database university;

create database aaft;

use aaft;

create table student(id int,name varchar(200),age int);

insert into student(id,name,age) values(001,"madhav",13);

use aaft;

alter table student 
ADD section varchar(20);

alter table student
modify section int;

insert into student(id,name,age,section) values(3,"chirag",34,2);

select * from  student; 

alter table student
change section class_section varchar(40);

select * from student;

use aaft;
alter table student 
add unique(class_section);

alter table student 
drop column class_section;
 
 select * from student;
 
 alter table student 
 rename  aaft_student;
 
 select * from aaft_student;
 
 