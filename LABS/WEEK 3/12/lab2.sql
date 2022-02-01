use sakila;

# 1. Select all the actors with the first name "Scarlett":
select * from actor where first_name = 'Scarlett';

# 2. How many films (movies) are available for rent and how many films have been rented?
select count(distinct(rental_id)) as num_rented, count(distinct(inventory.inventory_id)) as available from rental, inventory;

# 3. What are the shortest and longest movie duration? Name the values 'max_duration' and 'min_duration'.
select min(length) as 'min_duration' from film;
select max(length) as 'max_duration' from film;

# 4. What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length) / 60), ':', round(avg(length) % 60)) as duration from film limit 1;

# 5. How many distinct (different) actors' last names are there?
select distinct(last_name) from actor;

# 6. Since how many days has the company been operating (check DATEDIFF() function)?
select datediff(current_date(), min(rental_date)) as 'lifetime' from rental;

# 7. Show rental info with additional columns month and weekday. Get 20 results.
select *, date_format(rental_date, '%m') as 'month', date_format(rental_date, '%W') as 'weekday' from rental limit 20;

# 8. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select *, date_format(rental_date, '%m') as 'month', date_format(rental_date, '%W') as 'weekday', case when date_format(rental_date, '%W') = 'Saturday' or 'Sunday' then 'Weekend' else 'Workday' end as 'wk/wkend' from rental;

# 9. How many rentals were in the last month of activity?
select max(rental_date) from rental;
select count(*) as rentals from rental where rental_date > '2006-02-14 15:16:03' - interval 1 month;
