use world ;
select * from country ;
select code , name , continent , population from country ;

select code , name , continent , population ,
avg(population) over() from country ;

select name , continent , population , sum(population) over(),
sum(population) over(partition by continent ) from country ;

select name , population , continent , 
sum(population) over (partition by continent ),
sum(population) over (partition by continent , region ) 
from country;

select * from employee;