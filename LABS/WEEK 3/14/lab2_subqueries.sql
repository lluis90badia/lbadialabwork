use sakila;

# 1. How many copies of the film Hunchback Impossible exist in the inventory system?

select count(inventory_id) as inventory from inventory 
inner join film using(film_id) 
where title in 
(
	select title from film 
    where title = 'HUNCHBACK IMPOSSIBLE'
);

# 2. List all films whose length is longer than the average of all the films.

select title, length as average from film 
where length > 
(
	select avg(length) from film
);

# 3. Use subqueries to display all actors who appear in the film Alone Trip.

select first_name, last_name from actor 
inner join film_actor using(actor_id) 
inner join film using(film_id) 
where title in 
(
	select title from film 
    where title = 'ALONE TRIP'
);

# 4. Sales have been lagging (dropping) among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

select title from film 
inner join film_category using(film_id) 
inner join category using(category_id) 
where name in 
(
	select name from category 
    where name = 'Family'
);

# 5. Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information.

select first_name, last_name, email from customer 
inner join address using(address_id) 
inner join city using(city_id) 
inner join country using(country_id) 
where country in 
(
	select country from country 
    where country = 'Canada'
);

# 6. Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films. First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.

	# 6.1) Most prolific actor/actress and the number of films:
    
	select a.first_name, a.last_name, count(f.film_id) as count from actor a 
    inner join film_actor fa using(actor_id) 
    inner join film f using(film_id)
    # where a.first_name = 'SUSAN' and a.last_name = 'DAVIS' 	to check the number of films starred by SUSAN DAVIS --> 33; and GINA DEGENEREES --> 42 films (without the WHERE clause)
    group by a.actor_id
    order by count(f.film_id) desc 
    limit 1;

	# OPTIONAL - 6.2) The name of the films starred by the most prolific actress:

	select f.title from film f 
	inner join film_actor fa using(film_id) 
	inner join actor a using(actor_id) 
	where a.actor_id 
	= (
		select a.actor_id
		from actor a 
		inner join film_actor fa using(actor_id) 
		inner join film f using(film_id) 
		group by a.actor_id
		having count(f.film_id)
		order by count(f.film_id) desc 
		limit 1
	);

# 7. Films rented by most profitable customer. You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments

	# 7.1: Most profitable customer:
    select customer_id, count(rental_id) as num_rental from customer 
    inner join payment using(customer_id)
    group by customer_id
    order by sum(amount) desc
    limit 1;
    
    # 7.2: The name of the films rented by the most profitable customer:
    select f.title from film f
    inner join inventory i using(film_id)
    inner join rental r using(inventory_id)
    where customer_id
    = (
		    select customer_id from customer 
			inner join payment using(customer_id)
			group by customer_id
			order by sum(amount) desc
			limit 1
	);

# 8. Get the client_id and the total_amount_spent of those clients who spent more than the average of the total_amount spent by each client.

# Average of the total_amount:
select avg(amount) from payment;  # ----------------> 4.20067


select customer_id, sum(amount) as sum from payment
# inner join payment using(customer_id)
group by customer_id
having sum(amount) > (select avg(amount) from payment)
order by sum desc;