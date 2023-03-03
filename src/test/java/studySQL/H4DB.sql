/*List all the movies with the most copies in store 1 in ordered by film id.*/
SELECT f.film_id, f.title, COUNT(i.inventory_id) AS num_copies
FROM inventory i
JOIN film f ON i.film_id = f.film_id
WHERE i.store_id = 1
GROUP BY f.film_id, f.title
HAVING COUNT(i.inventory_id) = 
(SELECT COUNT(i2.inventory_id) AS num_copies
FROM inventory i2
WHERE i2.store_id = 1
GROUP BY i2.film_id
ORDER BY num_copies DESC
LIMIT 1)
ORDER BY f.film_id;