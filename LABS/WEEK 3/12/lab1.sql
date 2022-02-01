# 1. Use 'sakila' database:
use sakila;

# 2. Get all the data from tables 'actor', 'film' and 'customer':
select * from actor;
select * from film;
select * from customer;

# 3. Get film titles:
select title from film limit 10;

# 4. Get unique list of film languages under the alias 'language'...:alter
select distinct(name) as 'language' from language;

# 5.1: Find out how many stores does the company have?
select count(*) as num_stores from store;

# 5.2: Find out how many employees staff does the company have?
select count(*) as num_emp from staff;

# Return a list of employee first name only?
select first_name from staff;