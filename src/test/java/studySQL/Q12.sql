/*What are the top 3 least rented film categories?*/
SELECT name,COUNT(rental.inventory_id) FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film.film_id = film_category.film_id
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id
GROUP BY name
ORDER BY COUNT(rental.inventory_id)
LIMIT 3;