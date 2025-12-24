use sakila ;
select * from actor;
select * from film_actor;

select a.name , a.population , b.language , b.percentage
from country as a
join 
countrylanguage as b
where a.code = b.countrycode;

select a.first_name , a.actor_id from actor as a 
join film_actor as fa 
where a.actor_id = fa.actor_id ;
select fa.actor_id , fa.film_id from film_actor as fa ;

select * from film;
select * from film_actor;
select * from actor ;



-- to columns primary  key combination is composite 
select fa.film_id , fa.actor_id , f.film_id , f.title from film_actor as fa
join film as f 
where fa.film_id = f.film_id;

select a.actor_id , a.first_name , a.last_name,fa.film_id , f.title 
from actor as a 
join film_actor as fa
join film as f 
where a.actor_id = fa.actor_id and fa.film_id = f.film_id ;

select a.first_name , fa.film_id 
from actor as a join film_actor as fa
where a. actor_id = fa.actor_id ;

select * from customer ;
select * from address ;

select a.first_name , b.address 
from customer  as a join address as b
where a.address_id = b.address_id; 

select * from film;
select * from language ;

select a.title , b.name 
from film as a   join   language as b
where a.language_id = b.language_id ;

-- actor , film_actor 

-- actor id , ac_name , total movie he work
use sakila;
select * from film;
select * from film_actor;

select a.actor_id , a.first_name , count(fa.film_id) 
from actor as a join film_actor as fa 
where a.actor_id = fa.actor_id 
group by a.actor_id ,a.first_name;

-- H.W
-- normalisation 
-- 1nf , 2nf ,3nf
-- what are outer join , self join 