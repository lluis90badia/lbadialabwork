use sakila;

# 1. Write a query to display for each store its store ID, city and country.
select s.store_id, c.city, co.country from store s inner join address a using(address_id) inner join city c using(city_id) inner join country co using(country_id);

# 2. Write a query to display how much benefit amount, in dollars, each store brought in.
select s.store_id, sum(p.amount) as benefit from store s inner join staff st using(store_id) inner join payment p using(staff_id) group by s.store_id;

# 3. What is the average running time of films by category?
select c.name as Category, round(avg(f.length), 2) as Avg_min from category c inner join film_category fc using(category_id) inner join film f using(film_id) group by c.name;

# 4. Which film categories are longest on average?
select c.name as Category, round(avg(f.length), 2) as Avg_min from category c inner join film_category fc using(category_id) inner join film f using(film_id) group by Category order by Avg_min desc limit 1;

# 5. Display the most frequently rented movies in descending order.
select f.title, count(r.rental_id) as num_rent from film f inner join inventory i using(film_id) inner join rental r using(inventory_id) group by f.title order by num_rent desc;