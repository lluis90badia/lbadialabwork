use sakila;

# ------------------------------------- LAB SQL-QUERIES ---------------------------------------------------------------

# 1. Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(*) as num_rentals from rental group by staff_id;

# 2. Using the film table, find out how many films were released.
select count(*) as num_films from film;

# 3. Using the film table, find out how many films there are of each rating. Sort the results in descending order of the number of films.
select rating, count(*) from film group by rating order by count(*) desc;

# 4. Which kind of movies (rating) have a mean duration of more than two hours?
select rating, round(avg(length), 2) as avg_length from film group by rating having avg(length) > 120;

# ---------------------------------   ACTIVITY 3.04 ---------------------------------------------------

# 1. Link of EER Sakila's diagram:        https://github.com/lluis90badia/lbadialabwork/blob/main/LABS/WEEK%203/13/sakila_diagram.mwb

# 2. From the following columns, determine if they can be Primary key PK or not.

# Product_id: YES
# Phone number: YES
# First name: NO