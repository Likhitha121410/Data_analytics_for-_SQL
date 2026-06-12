use company;
select * from empl_info;

select concat(first_name,last_name)
from empl_info;


select trim(concat(first_name,last_name))
from empl_info;

select substring("SQL IS FUN",5,10) as sub_str;

select substr("mehatab jaan",9,12) as extractedstr;

select concat(first_name, upper(first_name)) as upper_case
from empl_info;
select concat(first_name, lower(first_name)) as lower_case
from empl_info;


select character_length("hello sql") as ch_len;

select character_length(first_name) from empl_info;

select mid("mehatab jan",4,9) as mid_val;

select mid(first_name,2,3) as mid_first from empl_info;