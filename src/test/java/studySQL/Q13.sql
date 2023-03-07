/*What are the top 3 most rented movies which have a category of ‘Action’?*/
SELECT title,COUNT(rental.inventory_id) FROM film
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id
JOIN film_category ON film_category.film_id = inventory.film_id
JOIN category ON category.category_id = film_category.category_id AND name = 'Action'
GROUP BY title
ORDER BY COUNT(rental.inventory_id) DESC
LIMIT 5;