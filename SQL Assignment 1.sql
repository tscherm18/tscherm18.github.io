-- SQL Assignment 1
-- Tim Scherman

-- #1 How many actors are there with the last name ‘Wahlberg’?
select last_name
from actor a
where a.last_name = 'Wahlberg';

-- #2 How many payments were made between $3.99 and $5.99?
select customer_id, amount
from payment p 
where amount between 3.99 and 5.99;

-- #3 What film does the store have the most of?
select film_id as "ID", COUNT(film_id) as "# of Films"
from inventory
group by film_id 
order by COUNT(film_id) desc;

-- #4 How many customers have the last name ‘William’?
select last_name
from customer c 
where c.last_name = 'William';

-- #5 What store employee (get the id) sold the most rentals?
select staff_id as Employee, COUNT(rental_id)
from rental
group by staff_id
order by COUNT(rental_id) desc;

-- #6 How many different district names are there?
select COUNT(distinct district)
from address;

-- #7 What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(distinct actor_id) 
from film_actor
group by film_id
order by COUNT(actor_id) desc;


-- #8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select store_id, COUNT(last_name)
from customer
where store_id = 1 and last_name like '%__es'
group by store_id;

-- #9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--    with ids between 380 and 430? (use group by and having > 250)
select amount, COUNT(amount)
from payment
where customer_id between 380 and 430
group by amount having COUNT(rental_id) > 250
order by amount;


-- #10 Within the film table, how many rating categories are there? And what rating has the most
--     movies total?
select distinct rating, COUNT(rating)
from film
group by rating
order by COUNT(rating) desc;




