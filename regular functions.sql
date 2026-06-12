USE college_info;
select * from tele_com_churn;

select count(*) from tele_com_churn;

select * from tele_com_churn where Warehouse_block like '%a';

select * from train;
select * from tele_com_churn where Mode_of_Shipment like '%f';
 create database regular_fun;
 use regular_fun;
 select * from tele_com_churn;
 select * from tele_com_churn where Warehouse_block like '%a';
 

select count(*) from tele_com_churn  where Mode_of_Shipment regexp '^p';

select * from tele_com_churn  where Mode_of_Shipment like '%P%' or
Mode_of_Shipment like '%B%';

select count(*) from tele_com_churn  where style like '%P%' or
 style like '%B%';

select *from tele_com_churn  where Mode_of_Shipment regexp '[pb]';

select count(*) from Ramen where style regexp '[p%t%]';

select count(*) from Ramen where style regexp '[pt]';

select *from Ramen where country  regexp '[t]';
 
 