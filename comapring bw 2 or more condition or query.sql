CREATE DATABASE college;
USE college;

CREATE TABLE student (
  rollno INT PRIMARY KEY ,
  name VARCHAR (50)
);

INSERT INTO student 
 (rollno , name)
 VALUES 
 (19 , 'ayush') ,
 (20 , 'mahek') ;
 
SELECT * FROM student ;

USE world ;
select * from country ;
select continent , sum(population) from country group by continent having sum(population)> 100;

select indepyear , count(name )from country where indepyear > 1930 group by indepyear having count(name)>2	;

select governmentForm , count(name) from country group by governmentForm having count(name)>20 ;

select governmentForm , count(name) from country where capital > 30 group by governmentForm;

select count(name) , count(region) , sum(population) from country where LifeExpectancy > 38 group by continent having sum(population) > 300000; 