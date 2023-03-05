/*How many movies (from the film table) are not in inventory?*/
SELECT COUNT (film.film_id) FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS null;