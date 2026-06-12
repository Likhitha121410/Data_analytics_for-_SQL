create database sql_joins;
use sql_joins;
create table cust_info
(
customer_name varchar(30),
customer_id varchar(30),
address varchar(30),
city varchar(30),
postalcode varchar(20),
country varchar (23),
primary key(customer_id));

insert into cust_info values ('likki',1,'kadiri','atp',0000,'india');
insert into cust_info values ('nanda',2,'ramapuram','mpl',0001,'america');
insert into cust_info values ('alberto',3,'bugolam','banglore',0002,'japan');
insert into cust_info values ('luca',4,'odc','kadiri',0003,'india');
insert into cust_info values ('jilia',5,'odc','kadiri',0003,'india');
insert into cust_info values ('jilia',6,'odc','kadiri',0003,'india');
select * from customer;

// order info values are inserting
create table order_info1
(
order_id int,
customer_id int,
employee_id int,
order_date datetime,
shipper_id int,
primary key (order_id));

insert into order_info1 values (101,1,1,sysdate(),1214);
insert into order_info1 values (102,2,1,sysdate(),1214);
insert into order_info1 values (103,3,1,sysdate(),1214);
insert into order_info1 values (104,4,1,sysdate(),1214);
insert into order_info1 values (105,5,1,sysdate(),1214);

select c.customer_id, c.customer_name, c.country,o.order_id,o.order_date
from cust_info c right join order_info1 o 
on c.customer_id = o.customer_id;

select c.customer_id, c.customer_name, c.country,o.order_id,o.order_date
from cust_info c left join order_info1 o 
on c.customer_id = o.customer_id;

select c.customer_id, c.customer_name, c.country,o.order_id,o.order_date
from cust_info c
inner join order_info1 o
on c.customer_id= o.customer_id;

select c.customer_id,c.customer_name,c.country,o.order_id,o.order_date
from cust_info c
left outer join  order_info1 o
on c.customer_id= o.customer_id;

select c.customer_id,o.order_id,c.customer_name
from cust_info c
right outer join  order_info1 o
on c.customer_id= o.customer_id;

select c.customer_id,o.order_id,c.customer_name
from cust_info c
join  order_info1 o
on c.customer_id= o.customer_id;

select c.customer_id,c.customer_name,c.country,o.order_id,o.order_date
from cust_info c
left outer join  order_info1 o
on c.customer_id= o.customer_id
union
select c.customer_id,c.customer_name,c.country,o.order_id,o.order_date
from cust_info c
right outer join  order_info1 o
on c.customer_id= o.customer_id;

SELECT customer_id
FROM Customers

INTERSECT

SELECT customer_id
FROM Orders;

