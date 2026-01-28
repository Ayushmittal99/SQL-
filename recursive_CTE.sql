use sakila ;
select first_name 
from sakila.actor 
where actor_id between 1 and 4  
union
select actor_id 
from sakila.actor 
where actor_id between 3 and 5;

select actor_id , first_name from sakila.actor where actor_id between 1 and 4 
union all 
select actor_id , first_name from sakila.actor where actor_id between 4 and 5;
 
with recursive cte as (
select 10 as num
union all 
select num+1 from cte 
where num< 15 )

select * from cte ;

-- Employee Hirarchey 

CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    name VARCHAR(50),
    managerid INT
);


INSERT INTO employees (employeeid, name, managerid) VALUES
(1, 'Alice', NULL),      -- CEO
(2, 'Bob', 1),           -- Reports to Alice
(3, 'Charlie', 2),       -- Reports to Bob
(4, 'Diana', 2),         -- Reports to Bob
(5, 'Eve', 3);           -- Reports to Charlie

select * from employees;

select * , name as hirarchy_path from employees where managerid is null ;


select * from employees;
with xyz as (
select employeeid, name , name as hierarchy_path from employees where managerid is null 
)
select * from xyz;

with recursive cte as (
select employeeid, name , name as hierarchy_path from employees where managerid is null 
union all 
select e.employeeid, e.name , concat(e.name , '->',cte.hierarchy_path)
from employees as e
join cte where e.managerid = cte.employeeid and e.employeeid< 5
)
select * from cte;


with recursive cte as (
select employeeid, name , name as hierarchy_path from employees where managerid is null 
union all 
select e.employeeid, e.name , concat(e.name , '->',cte.hierarchy_path)
from employees as e
join cte where e.managerid = cte.employeeid and e.employeeid< 5
)
select * from cte;







