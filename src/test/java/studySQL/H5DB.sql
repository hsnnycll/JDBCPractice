/*How many movies have 3 copies in store 2?*/
SELECT COUNT(*) AS num_movies
FROM inventory
WHERE store_id = 2 AND film_id IN 
(SELECT film_id
FROM inventory
WHERE store_id = 2
GROUP BY film_id
HAVING COUNT(*) = 3);
