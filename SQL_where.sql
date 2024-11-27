create database population;
use population;
create table people(
id int(10),
name varchar(200),
age int(3),
gender varchar(20),
phone varchar(13),
city varchar(10)
);
select * from people;
insert into people(id,name,age,gender,phone,city)
values(1,"ram kumar",19,"M",4022155,"agra");
select * from people;
insert into people(id,name,age,gender,phone,city)
values(1,"sanita kumari",21,"F",4034421,"delhi");
insert into people(id,name,age,gender,phone,city)
values(3,"salman",20,"M",4056221,"agra");
insert into people(id,name,age,gender,phone,city)
values(4,"juhi chawla",18,"F",4089821,"bhopal");
insert into people(id,name,age,gender,phone,city)
values(5,"anil kapoor",22,"M",4025221,"agra");
insert into people(id,name,age,gender,phone,city)
values(6,"john abraham",21,"M",4033776,"delhi");
select* from people;
select name from people;
select id as "student id",name as student_name from people;
select * from people 
where gender="M";
select * from people 
where age=21;
select* from people 
where city = "agra";
select* from people 
where city != "agra";
select* from people 
where age>=18 and age<=21;
select* from people 
where age=21 and gender="M";
select * from people 
where city="bhopal" or city= "agra";
select * from people  
where city!="bhopal" and city!="agra";
select * from people  
where NOT(city="bhopal"  or city="agra");
select * from people  
where age IN(18,19,21);
select * from people  where city IN("bhopal", "delhi");

