select database();
use world;
select * from country;
select continent , count(name) from country
 where indepyear >1950 group by continent;

select continent , count(name) from country
  group by continent having count(name)>30;
  
select continent , sum(population) from country 
 group by continent;

select Indepyear, count(name) from country 
 where indepyear>1930 group by Indepyear;
 
select * from country;
 
select governmentform, count(name) from country 
  group by governmentform having count(name) > 20;
  
select name from country where capital > 30 ;

select continent , region , count(name) 
 from country where lifeexpectancy > 38 group by continent ,
 region having sum(population) > 300000;