-- IN 
select month(payment_date) , sum(amount) from payment
where month(payment_date) > (select month(payment_date) from payment where month(payment_date) > customer_id = 1 and  payment_id = 3)
group by month(payment_date);

use sakila ;
select amount from payment where payment_id = 3 or payment_id = 2;

select * from payment where amount  in (select amount from payment where payment_id = 3 or payment_id = 2);

-- ANY          
-- we can give Comaprision Operators in it 
select * from payment where amount  > any (select amount from payment where payment_id = 3 or payment_id = 2);

-- ALL
-- 0.99 , 5.99
select * from payment where amount  > all (select amount from payment where payment_id = 3 or payment_id = 2);



select * from payment ;
select month(payment_date)  from payment where payment_id = 2 or payment_id = 3;

select * from payment where month(payment_date) in (select month(payment_date)  from payment where payment_id = 2 or payment_id = 3);

select amount from payment 	where payment_id = 2 or payment_id = 3 or payment_id = 4 or payment_id = 5 or payment_id = 6 or payment_id = 7 or payment_id 8 ;