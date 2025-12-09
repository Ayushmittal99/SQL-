-- sql is not case sensitive  
select database();
use world;
show tables;

describe city;

--  print data of the table 
select * from city;

-- to access column & column can be print in any order

select name , population , population+10 from city;

-- query can be writen in the multiple lines 
select name , population , 
	population+10 from city;

--  alias helps to chaneg the column name 
select * , population , population+10 as 'new population ' from city;
