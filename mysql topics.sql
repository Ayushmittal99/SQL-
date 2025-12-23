show databases;

--  to CREATE a database to organize 
create database tata;

-- to utillize the databse for which a data will be stored(USE) 
use tata;

-- to see tables(SHOW) 
show tables;

create table BMW(price int , color char(20));
show tables;

use world;
show tables;

-- to see my columns name of table country (DESCRIBE)
describe country ;

-- print the data in the column 
select * from country ;

-- to see the 2 columns and their can be any order to print the columns
select name , region , population from country ;

select name , region , population-500 from country ;

-- to filter the data we use WHERE 
select * from country where continent = 'Asia';
select * from country where indepyear = 1919;
 
-- jaruri nhi hai ki jo filter kare wo hi print ho 
select name , continent from country where indepyear = 1991;

-- IN use to specfically find the values
select * from country where continent in ('africa', 'asia');

select * from country where indepyear in (1960 , 1991);
-- not in 
select * from country where indepyear not in (1960 , 1991);

-- between 
select * from country where indepyear between 1960 and 1991;

-- not between 
select * from country where indepyear not between 1960 and 1991;

-- QUESTION  PRACTICE  
select name , continent from country where region !=  'south europe';
select name , continent , population*0.1+population from country;
select * from country where lifeExpectancy in (77.8 and 63.7); 
select name , population , region from country where population not between 5000 and 300000;

-- LIKE op. (%)
select * from country where name like 'i%a';

-- underscore(_)
select * from country where name like 'i____';

select name , continent from country where continent like 'n%';
select name , continent from country where continent like '%p_';











