use sakila ;

with tushar_cte as 
(select * from sakila.actor)

select * from tushar_cte ; 

with tushar_cte as 
(select * from sakila.actor where actor_id between 5 and 90)

select count(*) from tushar_cte ;


# they are not store in parmanent basis / only in temporary basis 
# it will help to break the complex query into the readable form 
# 





