
use chirag;
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

select * from people;

set sql_safe_updates=0;
update people
set phone=4022156 where id=1;
select * from people;

update people
set age=20 where id=1;
select * from people;

update people 
set age=22 where id IN(3,4);
select * from people;

update people 
set age=19;
select * from people;

update people
set age=20,phone=4065327 where id=4;
select * from people ;	

delete from people where id=1;
select * from people;

delete from people where gender="F";
select * from people ;

delete from people;
select * from people;

insert into people(id,name,age,gender,phone,city)
values(1,"ram kumar",19,"M",4022155,"agra");

truncate table people;
select * from people;

Select * from  people where Age BETWEEN 18 and 21;

Select * from people where Age NOT BETWEEN 18 and 21;

Select * from people where ID BETWEEN 2 and 5;

Select * from people where  Name BETWEEN "A" and "K";

Select * from people where  Name like "s%" ;

Select * from people where  Name like "%s%" ;

Select * from people where  Name like "%am%" ;

Select * from people where  Name like "%__h__ %" ;

Select * from people where  Name like "__h%" ;

Select * from people where  Name like "J%a";

Select * from people where  Name like "%_han";

Select * from people where  City like "a%";

Select * from people where  phone like "%56%";

Select * from people where  Name  NOT  like "R%";

Select * from people where  Name regexp "ra";

Select * from people where  Name regexp "^ra";

Select * from people where  Name regexp "an$";

Select * from people where  Name regexp "ram|kapoor|khan";

Select * from people where  Name regexp "^ram|kapoor|^khan";

Select * from people where  Name regexp "ram|kapoor|khan$";	

select * from people order by name;

select * from people order by name asc;

select * from people order by name desc;

select * from people order by city;

select * from people order by name,city;

select * from people order by city,name;

select * from people order by city desc,name;

select * from people order by city desc,name desc;

select * from people order by city,name desc;

select * from people where age>19 order by name desc;

select distinct city from people;

insert into people(id,name,age,gender,phone,city)
values(7,"dkumar",19,"M",4022155,"agra");

select distinct age from people order by age asc;

select distinct age from people where age>19 order by age ;

select * from people limit 3;

select * from people limit 2;

select * from people where city="agra" limit 3;

select * from people where city="agra" order by name limit 2,2;

select * from people limit 2,2;

select * from people limit 2,3;

select * from people limit 1,3;

select * from people limit 5,6;

select id,upper(city) from people;

select id, name, character_length(name) as length from people;

select id, name, char_length(name) as length from people;  

select id, name, length(name) as length from people; 

select id,name,city, char_length(city) as city_length from people;

select id,upper(name) as name ,length(city) as city_length from people;
select concat(name,age) as student from people;

select concat(name, " ", age) as name from people; 

select concat (upper(NAME), " IS THIS YEAR OLD ",AGE) AS NAME FROM PEOPLE;

select concat (upper(name)," is ",age," year old") as name from people;

select concat(upper(name)," is ",age," year old") as name from people where name="dkumar";

select concat("madhav"," - ",21) as name;

select concat( upper("madhav")," - ", 23) as name;

select concat ( lower("madhav"), " contains " , length("madhav"), " characters ") as name_length;

select concat_ws("+++", "madhav","hello","class") as sentence;

select "           madhav gupta      "as name ;

select ltrim("           madhav gupta          ") as name;

select rtrim("             madhav gupta          ") as name;

select trim("          madhav   gupta      ") as name ;

select position("hello" in "hello world my name is sashi") as position;

select instr( "hello world my name is sashi","ell") as instr;

select locate ("ell","hello world") as locate;
# start with the postion and find the l from third position including the 3 index
select locate ("l","hello world",3) as locate;
# start with the position 5 nd go on with the same numerical counting6,7,8,9,10 
select locate ("l","hello world",5) as locate;

select locate ("l","hello world",7) as locate;
# including the 3 index 
select substring("nemma jha ",3) as substring;

select substring("nemma jha ",5)as substring;

select substring("nemma jha ",3,2) as sub;

select substring("madhav gupta",-2,2)as sub;

select substring("madhav gupta",-2,8)as ub;

select substring("madhav gupta",-5,4) as ame;

select mid("madhav gupta",-5,4) as name;

select substring_index("www.madhavgupta.net",".",1);

select substring_index("www.madhavgupta.net",".",2);

select substring_index("www.madhavgupta.net",".",3);

select substring_index("www.madhavgupta.net","e",1);

select substring_index("www.madhavgupta.net","a",1);

select substring_index("www.madhavgupta.net","a",2);

select concat("madhav"," - ",21) as name;

select concat( upper("madhav")," - ", 23) as name;

select concat ( lower("madhav"), " contains " , length("madhav"), " characters ") as name_length;

select concat_ws("+++", "madhav","hello","class") as sentence;

select "           madhav gupta      "as name ;

select ltrim("           madhav gupta          ") as name;

select rtrim("             madhav gupta          ") as name;

select trim("          madhav   gupta      ") as name ;

select position("hello" in "hello world my name is sashi") as position;

select instr( "hello world my name is sashi","ell") as instr;

select locate ("ell","hello world") as locate;
# start with the postion and find the l from third position including the 3 index
select locate ("l","hello world",3) as locate;
# start with the position 5 nd go on with the same numerical counting6,7,8,9,10 
select locate ("l","hello world",5) as locate;

select locate ("l","hello world",7) as locate;
# including the 3 index 
select substring("nemma jha ",3) as substring;

select substring("nemma jha ",5)as substring;

select substring("nemma jha ",3,2) as sub;

select substring("madhav gupta",-2,2)as sub;

select substring("madhav gupta",-2,8)as ub;

select substring("madhav gupta",-5,4) as ame;

select mid("madhav gupta",-5,4) as name;

select substring_index("www.madhavgupta.net",".",1);

select substring_index("www.madhavgupta.net",".",2);

select substring_index("www.madhavgupta.net",".",3);

select substring_index("www.madhavgupta.net","e",1);

select substring_index("www.madhavgupta.net","a",1);

select substring_index("www.madhavgupta.net","a",2);

select left( "madhav gupta",2) as fn;

select right( "madhav gupta",2) as fn;

select rpad( "madhav gupta",20,"-") as fn;

select lpad( "madhav gupta",20,"-") as fn;

select reverse( "madhav gupta") as fn;

select reverse( "madhav gupta") as fn;

select replace( "madhav gupta","gupta","dogra") as fn;

select replace( "mahira dogra mahira dogra","dogra","gupta") as fn;

select strcmp( "madhav gupta","madhav gupta") as fn;

select strcmp("madhav gupta ", "madhav sushil gupta") as fn;

select strcmp("madhav sushil gupta ", "mahira gupta") as fn;












