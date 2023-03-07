/*How many movies have a rating of ‘PG-13’ and the category of ‘Comedy’ in the Inventory?*/
SELECT COUNT(DISTINCT(inventory.film_id)) FROM inventory
JOIN film ON film.rating = 'PG-13' AND film.film_id = inventory.film_id
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
AND name = 'Comedy'