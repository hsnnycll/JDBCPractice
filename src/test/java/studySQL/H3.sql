/*What are the names of top 5 categories, that have more than 150 films in inventory of store-1?*/
SELECT c.name, COUNT(*) AS film_count
FROM inventory i
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE i.store_id = 1
GROUP BY c.name
HAVING COUNT(*) > 150
ORDER BY film_count DESC
LIMIT 5;