-- 1. Show all fields and records from the staff table
select *
from staff s ;

-- 2. Show address and district columns from address table
select address , district 
from address a ;

-- 3. Show all the distinct last names from customer table
select distinct last_name 
from customer c ;

-- 4. Find the number of films
select count(1) as number_of_films
from film f ;

-- 5. Find the number of distinct first names in actor table
select count (distinct first_name) as distinct_firstname
from actor a ;

-- 6. Show the data rental_id and the difference between return_date and rental_date in rental table
select rental_id , return_date - rental_date as rental_duration
from rental r ;
