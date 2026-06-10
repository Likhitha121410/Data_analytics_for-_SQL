create database company;
use company;
create table empl (first_name varchar(30),
last_name varchar(30),
title varchar(30),
age int ,
salary int);
desc empl;
alter table empl add column Gender varchar (10);
alter table empl modify  age int not null;
alter table empl drop column Gender;
insert into empl values 
("likhitha","machupalli","data",20,200000),
("shalini","dampetla","HR",20,30000),
("meha","pinjari","manager",21,300000),
("nanda","Allu","emplopyee",19,450000);
create table empl_info (first_name varchar(30),
last_name varchar (30),
id int primary key,
age int,
city varchar (40),
state varchar (40));
desc empl_info;

insert into empl_info values
("likhitha","machupalli",1,20,"payson" ,"andhra"),
insert into empl_info values ("nanda","allu", 7 ,19,"anantapur" ,"karnataka");
insert into empl_info values("shalini","dampetla",3,20,"madanapalli" ,"andhra");
insert into empl_info values("mehathab","pinjari",4,21,"hyb" ,"telangana");
insert into empl_info values("dakshan","pesani",5,23,"kadiri" ,"andhra");
insert into empl_info values("raja","yeddula",6,21,"chennai" ,"tamil nadu");
select *from empl_info;


select count(id)as id_count from empl_info;

select first_name ,last_name,age from empl_info;

select count(*) from empl_info;

select first_name from empl_info;

select first_name from empl_info where age>=20 and age<=25;

select * from empl_info where last_name like '%a';

select * from empl_info where last_name like 's%';

select * from empl_info where last_name like '%y%';
