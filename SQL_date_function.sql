select extract(month from "2019-10-15 09:34:21");

select field ("a","X","a","K");
select field(5,0,1,2,3,4,5);
select field("ram","Ram","Mohan","Shyam");
select find_in_set("Mohan","Ram,Mohan,Shyam");
select hex("Neema Jha");
select field("shyam","ram","mohan","shyam");
select find_in_set("Mayank","nihal,aadi,mayank,madhav,kakul");
select space(11);
select format(2345.9876,2);

#DATE FUNCTIONS

#current date only
select current_date();
select curdate();

#date nd time
select sysdate();
select now();                          

select date("2019-10-05 09:34:21");
select month("2019-10-05 09:34:21");
select monthname("2019-10-05 09:34:21");
select year("2019-10-05 09:34:21");
select quarter("2019-10-05 09:34:21");
select day("2019-10-05 09:34:21");
use company;
select * from class;

create table data(name varchar(50), DOB date);
insert into data(name,DOB)
values("Mayank Sharma","13-03-2006");
 
 insert into data (name,DOB)
 values("nihal","2008-13-09");
 
 select * from data;
 select year(DOB) from data;
drop table data;

create table data(name varchar(50), DOB date);
insert into data(name,DOB)
values("Mayank Sharma","2006-03-13");
insert into data(name, DOB)
values("Nihal","2007-09-19");
select year(DOB) from data;

select dayname("2019-10-15 09:34:21");
select dayofmonth("2019-10-15 09:34:21");
select dayofweek("2019-10-15 09:34:21");

select adddate("2019-10-15", interval 10 day);

select adddate("2019-10-15", interval 1 month);  

select adddate("2019-10-15", interval 5000 minute);

select makedate(2024,10);

select makedate(2022,1);

select subdate("2019-10-15", interval 1 day);

##################    TIME FUNCTIONS    ####################

select current_time();

select current_timestamp();

select curtime();

select localtime();

select localtimestamp();

select time("2019-10-15 9:34:21");

select hour("2019-10-15 90:34:21");

select minute("2019-10-15 9:34:21");

select timediff("5:23:10","9:3:21");

















