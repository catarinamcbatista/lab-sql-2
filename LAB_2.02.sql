#Lab | SQL Queries 2
#Select all the actors with the first name ‘Scarlett’.
SELECT actor_id, first_name, last_name FROM sakila.actor WHERE first_name='Scarlett';

#Select all the actors with the last name ‘Johansson’.
SELECT actor_id, first_name, last_name FROM sakila.actor WHERE last_name='Johansson';

#How many films (movies) are available for rent?
SELECT count(film.id) FROM sakila.film;

#How many films have been rented?
SELECT count(rental_id) FROM sakila.rental;

#What is the shortest and longest rental period?
SELECT max(rental_duration) AS 'Longest', min(rental_duration) AS 'Shortest' FROM sakila.film;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) AS 'Longest', min(length) AS 'Shortest' FROM sakila.film;

#What's the average movie duration?
SELECT AVG(length) AS 'Average' FROM sakila.film;

#What's the average movie duration expressed in format (hours, minutes)?
SELECT length, CONCAT(FLOOR(length/60),'h ',MOD(length,60),'m') AS 'Hours minutes' FROM sakila.film;

#How many movies longer than 3 hours?
SELECT length, film_id, CONCAT(FLOOR(length/60),'h ',MOD(length,60),'m') AS 'Hours minutes' FROM sakila.film WHERE length > 180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT first_name, last_name, email, concat((left(first_name,1)), substr(lower(first_name),2),' ',last_name,' - ',LOWER(email)) AS 'Contact person' FROM sakila.customer;

#What's the length of the longest film title?
SELECT title, MAX(LENGTH(title)) FROM sakila.film;