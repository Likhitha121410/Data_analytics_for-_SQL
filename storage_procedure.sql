create database stored_processor;
use  stored_processor;

create table players 
(
p_id int,
p_name varchar(40),
country varchar(30),
goals int);

insert into players values (101,'likki','india',110);
insert into players values (102,'shalini','america',120);
insert into players values (103,'meha','india',121);
insert into players values (104,'jilia','uk',123);
insert into players values (105,'luca','india',120);

select * from players;

select * from players where goals>120
delimiter &&
create procedure top_player1()
begin
select p_name,country,goals from players where goals>120;
end&&
delimiter ;
call top_player1();

select p_name,goals from players order by goals desc limit 1;

delimiter &&
create procedure top_on_goal(in num int)
begin 
select p_name,country,goals from players order by goals desc limit 1;
end &&
delimiter ;

call top_on_goal(1);


select p_name,goals from players order by goals desc limit 3;

delimiter &&
create procedure top_goal(in num int)
begin 
select p_name,country,goals from players order by goals desc limit 3;
end &&
delimiter ;

call top_goal(3);

set sql_safe_updates=0;
update players set goals =200 where p_name ='likki';
delimiter &&
create procedure update_players(in num int, in player varchar(25))
begin
update players set goals = num where p_name=player ;
end &&
delimiter ;

call update_players(250, 'ronaldo');

delimiter &&
create procedure player_count_country(in var varchar(25),out total_player int)
begin
select count(*) from players where country = var into total_player;
end &&
delimiter ;

call player_count_country('india',@total_count);
select @total_count as player_count_country;
select * from players;
