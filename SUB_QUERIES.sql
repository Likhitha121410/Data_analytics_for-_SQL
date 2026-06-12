create database sub_queries;
use sub_queries;
create table queries(
name varchar(30),
salary int);
insert into queries values ("likki",23000);
insert into queries values ("shalini",33000);
insert into queries values ("meha",45000);
insert into queries values ("nanda",24000);
insert into queries values ("alberto",45678);

select * from queries;
SELECT avg (salary) from queries;

SELECT sum(salary) from queries;

select * from queries where salary >(select avg (salary) FROM queries);
select name from queries where salary =(select MAX(salary) from queries);
select * from queries  order by salary   DESC LIMIT 1 offset 1;
select * from queries where salary >(select queries from salary  where name= "likki");