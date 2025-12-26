select count(*),
case 
	when population = 0 then 'no population '
    else 'condition is false' 
end as 'status' from world.country
group by status ;
