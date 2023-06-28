SELECT category_id, COUNT(*) AS number_of_films
FROM sakila.film_category
GROUP BY category_id;

SELECT store_id,city,country FROM sakila.store as s
JOIN sakila.address as ad
ON ad.address_id = s.address_id
JOIN sakila.city as ci
ON ci.city_id = ad.city_id
JOIN sakila.country as co
ON co.country_id = ci.country_id;

SELECT SUM(amount) FROM sakila.payment as p
JOIN sakila.staff as s
ON p.staff_id = s.staff_id
JOIN sakila.store as sto
ON s.store_id = sto.store_id
GROUP BY sto.store_id;

SELECT category_id,AVG(length) FROM sakila.film as f
JOIN sakila.film_category as fc
ON f.film_id = fc.film_id
GROUP BY category_id;

SELECT category_id,AVG(length) FROM sakila.film f
JOIN sakila.film_category as fc
ON f.film_id = fc.film_id
ORDER BY AVG(length) DESC
LIMIT 1;

SELECT title, rental_rate from sakila.film
ORDER BY rental_rate DESC
LIMIT 10;

SELECT store_id,title
FROM sakila.film as f
INNER JOIN  sakila.inventory as i
ON f.film_id = i.film_id
WHERE f.title = 'Academy Dinosaur'
  AND i.store_id = 1;
  










