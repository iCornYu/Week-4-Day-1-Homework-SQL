-- Homework Week 5 Day 1
-- Question 1:
SELECT last_name, first_name
FROM actor
WHERE last_name = 'Wahlberg';
--2 actors with last name: Wahlberg

-- Question 2:
SELECT COUNT(amount)
FROM payment
WHERE amount <= 5.99 and amount >= 3.99;
--5607 payments

--Question 3:
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
 -- Assumed store_id is for different stores & the entries of film_id is the copy being stored at the store_id
 --With this assumption, there are many films that 8 inventories. So I picked the top one - film_id 193
Select film_id, title
FROM film
WHERE film_id = '193';
-- Using the above ^ film_id 193 is the "Crossroads Casualties" at 8 copies. 

--Question 4:
SELECT first_name,last_name
FROM customer
WHERE last_name = 'William';

SELECT first_name,last_name
FROM customer
WHERE last_name LIKE 'William%';
-- No customer with the exact last name "William," however, two customers with William in their last name.

--Question 5:
SELECT staff_id, count(rental_date)
FROM rental
GROUP BY staff_id;

SELECT *
FROM STAFF;

-- Staff_id 1(Mike Hillyer) sold the most rentals with 8040 sold. 

--Question 6:
SELECT COUNT(DISTINCT district)
FROM address;
-- 378 different district names.

--Question 7:
SELECT COUNT(DISTINCT actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(DISTINCT actor_id) DESC;
--Film_id 508 has 15 different actors
Select film_id, title
FROM film
WHERE film_id = '508';
--Film_id 508 = "Lambs Cincinatti"

--Question 8:
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
--21 customers with last name ending with 'es'

--Question 9:
SELECT count(amount), amount
FROM payment
WHERE customer_id >= 380 and customer_id <= 430
GROUP BY amount
HAVING COUNT(amount) > 250
--3 different payment amounts. 0.99, 2.99, and 4.99.

--Question 10:
SELECT COUNT(DISTINCT film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(DISTINCT film_id) DESC
-- 5 different rating categories. PG-13 has the most movies at 223 movies. 
