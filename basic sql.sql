CREATE  DATABASE CollegeDB1;
USE CollegeDB;
CREATE TABLE Students1(Student_id int ,Student_name varchar(50),Age int,Gender varchar(10),Department varchar(90));
select * from Students1;
insert into Students1 values (1,'likki',21,'F','ds');
alter table Students1 add constraint primary key(Student_id);
create table Department (dept_id INT, Student_id INT , dept_name varchar(20),primary key(dept_id),foreign key(Student_id) references Students1(Student_id));
select * from Department;
